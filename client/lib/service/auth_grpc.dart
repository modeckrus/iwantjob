import 'package:client/proto/iwantjob.pbgrpc.dart';
import 'package:client/service/auth.dart';
import 'package:client/service/error_service.dart';
import 'package:client/units/user_claims.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'grpc_service.dart';
import '../units/user.dart';

class AuthGrpc extends Auth {
  DateTime expires = DateTime.now();
  bool isSignIn = false;
  DateTime refreshExpires = DateTime.now();
  @override
  User user = User.empty;
  @override
  Future<UserClaims?> login(
      {required String username, required String password}) async {
    try {
      final client = GRPCService().client;
      final resp = await AuthServiceClient(client)
          .login(LoginRequest(username: username, password: password));
      if (resp.hasAccessToken()) {
        print(resp.accessToken);
        isSignIn = true;

        user = User(id: resp.id, token: resp.accessToken, refreshToken: resp.refreshToken);
        updateUser();
        return UserClaims(
            token: resp.accessToken, refeshToken: resp.refreshToken);
      }
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }
  void updateUser(){
    try{
    GetIt.I.get<Box<User>>(instanceName: 'userBox').putAt(0, user);
    }catch(e){
      try{
        GetIt.I.get<Box<User>>(instanceName: 'userBox').add(user);
      }catch(e){
        ErrorService().AddString(e.toString());
      }
    }
  }
  @override
  Future<UserClaims?> register(
      {required String username, required String password}) async {
    try {
      final client = GRPCService().client;
      final resp = await AuthServiceClient(client)
          .singUp(LoginRequest(username: username, password: password));
      if (resp.hasAccessToken()) {
        print(resp.accessToken);
        isSignIn = true;
        user = User(id: resp.id, token: resp.accessToken, refreshToken: resp.refreshToken);
        updateUser();
        return UserClaims(
            token: resp.accessToken, refeshToken: resp.refreshToken);
      }
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }

  @override
  Future<UserClaims?> refresh() async {
    try {
      final client = GRPCService().client;
      final resp = await AuthServiceClient(client)
          .refresh(RefreshReq(refreshToken: user.refreshToken));
      if (resp.hasAccessToken()) {
        print(resp.accessToken);
        user = User(id: resp.id, token: resp.accessToken, refreshToken: resp.refreshToken);
        expires = DateTime.now().add(Duration(hours: 1));
        refreshExpires = DateTime.now().add(Duration(hours: 24));
        updateUser();
        return UserClaims(
            token: resp.accessToken, refeshToken: resp.refreshToken);
      }
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }

  @override
  void logout() {
    user = User.empty;
    isSignIn = false;
    GetIt.I.get<Box<User>>(instanceName: 'userBox').clear();
  }
}
