import 'package:grpc/grpc.dart';
class GRPCService{
  late  ClientChannel client;
  static final GRPCService _singleton =
  new GRPCService._internal();

  factory GRPCService()  => _singleton;


  GRPCService._internal() {
    client = ClientChannel("127.0.0.1", // Your IP here, localhost might not work.
        port: 9000,
        options: ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }

}