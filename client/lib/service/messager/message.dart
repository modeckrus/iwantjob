import 'package:client/proto/iwantjob.pb.dart' as pb;
import 'package:client/service/messager/messager_user.dart';
import 'package:hive/hive.dart';

part 'message.g.dart';

@HiveType(typeId: 3)
class Message {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String fid;
  @HiveField(2)
  final String text;
  @HiveField(3)
  final String photo;
  @HiveField(4)
  final DateTime createdAt;
  @HiveField(5)
  final MessagerUser user;

  Message(this.id, this.fid, this.text, this.photo, this.createdAt, this.user);
  factory Message.fromGRPC(pb.Message m) {
    return Message(
        m.id,
        m.fid,
        m.text,
        m.photo,
        DateTime.fromMillisecondsSinceEpoch(m.createdAt.toInt()),
        MessagerUser(username: m.user.name, role: m.user.role));
  }
}
