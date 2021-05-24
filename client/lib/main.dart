import 'package:client/service/error_service.dart';

import '../service/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'injections.dart';
import 'service/user_repository/user_repository.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  final authRepo = AuthenticationRepository();
  final userRepo = UserRepository();
  await userRepo.init();
  initApp();
  runApp(MyApp(
    authenticationRepository: authRepo,
    userRepository: userRepo,
  ));
}
