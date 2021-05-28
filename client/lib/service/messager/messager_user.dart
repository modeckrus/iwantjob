
import 'package:hive/hive.dart';

@HiveType(typeId: 5)
class MessagerUser {
  @HiveField(0)
  final String username;
  @HiveField(1)
  final String role;

  MessagerUser({required this.username, required this.role});
}