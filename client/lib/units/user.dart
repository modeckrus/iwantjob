import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User extends Equatable {
  const User({required this.id, required this.refreshToken, required this.token});
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String token;
  @HiveField(2)
  final String refreshToken;


  @override
  List<Object> get props => [id, token, refreshToken];

  static const empty = User(id: '-', token: '-', refreshToken: '-');
}
