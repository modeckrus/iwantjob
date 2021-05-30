
import 'package:hive/hive.dart';

part 'messager_user.g.dart';

@HiveType(typeId: 5)
class MessagerUser {
  @HiveField(0)
  final String username;
  @HiveField(1)
  final String role;

  MessagerUser({required this.username, required this.role});
}