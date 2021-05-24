import 'package:client/service/auth_grpc.dart';
import 'package:get_it/get_it.dart';
import 'service/auth.dart';
import 'service/db_grpc.dart';

import 'service/db.dart';
import 'service/db_test.dart';

Future<void> initApp() async {
  final testDb = DBGrpc();
  GetIt.I.registerSingleton<Db>(testDb);
  final auth = AuthGrpc();
  GetIt.I.registerSingleton<Auth>(auth);
}