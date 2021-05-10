import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../localization/localization.dart';
import '../units/cube.dart';

class CubeWidget extends StatefulWidget {
  final Cube cube;

  const CubeWidget({Key? key, required this.cube}) : super(key: key);
  @override
  _CubeWidgetState createState() => _CubeWidgetState();
}

class _CubeWidgetState extends State<CubeWidget> {
  Cube get cube => widget.cube;
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            hover = true;
          });
        },
        onExit: (event) {
          setState(() {
            hover = false;
          });
        },
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                cube.url,
                errorBuilder: (context, exception, stacktrace) =>
                    ErrorWidget(exception),
                fit: BoxFit.contain,
              ),
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: hover ? 1 : 0,
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(8),
                      child:ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: MaterialButton(
                          onPressed: () {
                            try {
                              launch(cube.source);
                            } catch (e) {}
                          },
                          child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                AppLocalizations.of(context).openLink,
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
