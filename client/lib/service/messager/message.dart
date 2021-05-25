import 'package:client/proto/iwantjob.pb.dart' as pb;
import 'package:hive/hive.dart';

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

  Message(this.id, this.fid, this.text, this.photo, this.createdAt);
  factory Message.fromGRPC(pb.Message m){
    return Message(m.id, m.fid, m.text, m.photo, DateTime.fromMillisecondsSinceEpoch(m.createdAt.toInt()));
  }
  
}