import 'dart:async';

import 'package:client/service/auth.dart';
import 'package:client/units/user.dart';
import 'package:client/service/user_repository/user_repository.dart';
import 'package:get_it/get_it.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    final claims = await GetIt.I.get<Auth>().login(username: username, password: password);
    if(claims != null){
      _controller.add(AuthenticationStatus.authenticated);
    }
    
  }

  Future<void> singUp(
      {required String username, required String password}) async {
    final claims = await GetIt.I.get<Auth>().register(username: username, password: password);
    if(claims != null){
      _controller.add(AuthenticationStatus.authenticated);
    }
  }

  void logOut() {
    
    GetIt.I.get<Auth>().logout();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void setStatus(AuthenticationStatus s){
    _controller.add(s);
  }
  
  void dispose() => _controller.close();
}
