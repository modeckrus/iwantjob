import 'package:client/proto/iwantjob.pbgrpc.dart';
import 'package:client/service/messager/message.dart';
import 'package:client/service/messager/messager.dart';
import 'package:client/service/messager/streamed_message.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/service_api.dart';
import '../auth.dart';
import '../error_service.dart';
import '../grpc_service.dart';
import 'message.dart' as u;
import 'streamed_message.dart' as u;
import 'package:fixnum/fixnum.dart' as $fixnum;
class GrpcMessager extends Messager {
  @override
  Future<u.Message?> CreateMessage({String? text, String? photo}) async {
    try {
      final client = GRPCService().client;
      final options = Map<String, String>();
      options['authorization'] = GetIt.I.get<Auth>().user.token;
      final resp = await MessagerClient(client, options: CallOptions(metadata: options))
          .createMessage(createMessageReq(text: text, photo: photo));
      return u.Message.fromGRPC(resp);
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }

  @override
  Future<String?> DeleteMessage({required String id}) async {
    try {
      final client = GRPCService().client;
      final options = Map<String, String>();
      options['authorization'] = GetIt.I.get<Auth>().user.token;
      final resp = await MessagerClient(client, options: CallOptions(metadata: options))
          .deleteMessage(deleteMessageReq(id: id));
      return resp.id;
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }

  @override
  Future<List<u.Message>?> GetMessages(
      {required DateTime from, required int first}) async {
    try {
      final client = GRPCService().client;
      final options = Map<String, String>();
      options['authorization'] = GetIt.I.get<Auth>().user.token;
      final f= $fixnum.Int64((from.millisecondsSinceEpoch ~/ 1000));
      final resp = await MessagerClient(client, options: CallOptions(metadata: options))
          .getMessages(getMessagesReq(from: f, first: first));
      final messages = resp.messages.map((e) => u.Message.fromGRPC(e)).toList();
      return messages;
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }

  @override
  Stream<u.StreamedMessage>? StreamMessages({required DateTime from}) {
    try {
      final client = GRPCService().client;
      final options = Map<String, String>();
      options['authorization'] = GetIt.I.get<Auth>().user.token;
      final f= $fixnum.Int64((from.millisecondsSinceEpoch ~/ 1000));
      final resp = MessagerClient(client, options: CallOptions(metadata: options))
          .streamMessages(streamMessagesReq(from: f));
      return resp.map((event) => StreamedMessage.fromGRPC(event));
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }

  @override
  Future<u.Message?> UpdateMessage(
      {required String id, String? text, String? photo}) async {
     try {
      final client = GRPCService().client;
      final options = Map<String, String>();
      options['authorization'] = GetIt.I.get<Auth>().user.token;
      final resp = await MessagerClient(client, options: CallOptions(metadata: options))
          .updateMessage(updateMessageReq(id: id, text: text, photo: photo));
      return u.Message.fromGRPC(resp);
    } catch (e) {
      ErrorService().AddString(e.toString());
    }
  }
}
