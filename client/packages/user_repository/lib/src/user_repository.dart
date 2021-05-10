import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:uuid/uuid.dart';

import 'models/models.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user == null) {
      Future.delayed(
        const Duration(milliseconds: 300),
        () => _user = User(const Uuid().v4()),
      );
    }
    if (GetIt.I.isRegistered<User>()) {
      GetIt.I.unregister<User>();
    }
    GetIt.I.registerSingleton<User>(_user!);
    return _user;
  }

  Future<User?> cachedUser() async {
    return Future<User?>.delayed(const Duration(milliseconds: 300), () {
      _user = User(const Uuid().v4());
      if (GetIt.I.isRegistered<User>()) {
        GetIt.I.unregister<User>();
      }
      GetIt.I.registerSingleton<User>(_user!);
      return _user;
    });
  }
}
