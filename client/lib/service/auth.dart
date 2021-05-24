import '../units/user_claims.dart';
import 'user_repository/models/user.dart';

abstract class Auth{
  User user = User.empty;
  Future<UserClaims?> login({required String username, required String password});
  Future<UserClaims?> refresh();
  Future<UserClaims?> register({required String username, required String password});
  void logout();
} 