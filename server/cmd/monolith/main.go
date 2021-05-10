package main

import (
	"html/template"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"

	"github.com/gin-gonic/gin"
)

var html = template.Must(template.New("https").Parse(`
<html>
<head>
  <title>Https Test</title>
</head>
<body>
  <h1 style="color:red;">Welcome, Ginner!</h1>
</body>
</html>
`))

func startHttpServer() *gin.Engine {
	r := gin.Default()
	r.SetHTMLTemplate(html)

	r.GET("/welcome", func(c *gin.Context) {
		c.HTML(http.StatusOK, "https", gin.H{
			"status": "success",
		})
	})

	go func() {

		// always returns error. ErrServerClosed on graceful close
		if err := r.Run(":8080"); err != http.ErrServerClosed {
			// unexpected error. port in use?
			log.Fatalf("ListenAndServe(): %v", err)
		}
	}()

	// returning reference so caller can call Shutdown()
	return r
}

func main() {
	logger := log.New(os.Stderr, "", 0)
	logger.Println("[WARNING] DON'T USE THE EMBED CERTS FROM THIS EXAMPLE IN PRODUCTION ENVIRONMENT, GENERATE YOUR OWN!")
	shutdown := make(chan int)

	//create a notification channel to shutdown
	sigChan := make(chan os.Signal, 1)
	startHttpServer()
	//register for interupt (Ctrl+C) and SIGTERM (docker)
	signal.Notify(sigChan, os.Interrupt, syscall.SIGTERM)
	go func() {
		<-sigChan
		logger.Println("Shutting down...")
		shutdown <- 1
	}()
	<-shutdown
	// Listen and Server in https://127.0.0.1:8080
	// r.RunTLS(":8080", "./testdata/server.pem", "./testdata/server.key")

}
