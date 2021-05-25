import 'package:client/proto/iwantjob.pb.dart' as pb;

class StreamedMessage {
  final String id;
  final String fid;
  final String text;
  final String photo;
  final DateTime createdAt;
  final String opType;
  StreamedMessage(this.id, this.fid, this.text, this.photo, this.createdAt, this.opType);
  factory StreamedMessage.fromGRPC(pb.StreamedMessahge m){
    return StreamedMessage(m.id, m.fid, m.text, m.photo, DateTime.fromMillisecondsSinceEpoch(m.createdAt.toInt()), m.opType);
  }
}