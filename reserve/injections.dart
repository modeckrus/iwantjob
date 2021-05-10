import 'package:get_it/get_it.dart';
import 'package:iwantjob/service/db_grpc.dart';

import 'service/db.dart';
import 'service/db_test.dart';

Future<void> initApp() async {
  final testDb = DBGrpc();
  GetIt.I.registerSingleton<Db>(testDb);
}