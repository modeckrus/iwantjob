import 'package:client/proto/iwantjob.pb.dart' as pb;
import 'package:client/service/messager/messager_user.dart';

class StreamedMessage {
  final String id;
  final String fid;
  final String text;
  final String photo;
  final DateTime createdAt;
  final String opType;
  final MessagerUser user;
  StreamedMessage(this.id, this.fid, this.text, this.photo, this.createdAt, this.opType, this.user);
  factory StreamedMessage.fromGRPC(pb.StreamedMessahge m){
    return StreamedMessage(m.id, m.fid, m.text, m.photo, DateTime.fromMillisecondsSinceEpoch(m.createdAt.toInt()), m.opType, MessagerUser(username: m.user.name, role: m.user.role));
  }
}