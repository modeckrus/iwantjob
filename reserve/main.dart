import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

import 'app.dart';
import 'injections.dart';

void main() {
  final authRepo = AuthenticationRepository();
  final userRepo = UserRepository();
  initApp();
  runApp(MyApp(
    authenticationRepository: authRepo,
    userRepository: userRepo,
  ));
}
