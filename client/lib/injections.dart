import 'package:client/service/auth_grpc.dart';
import 'package:client/service/messager/grpc_messager.dart';
import 'package:client/service/messager/messager.dart';
import 'package:get_it/get_it.dart';
import 'service/auth.dart';
import 'service/db_grpc.dart';

import 'service/db.dart';
import 'service/db_test.dart';

Future<void> initApp() async {
  final testDb = DBGrpc();
  GetIt.I.registerSingleton<Db>(testDb);
  final auth = AuthGrpc();
  final grpcMessager= GrpcMessager();
  GetIt.I.registerSingleton<Messager>(grpcMessager);
  GetIt.I.registerSingleton<Auth>(auth);
}