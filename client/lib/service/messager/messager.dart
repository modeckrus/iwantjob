import 'message.dart';
import 'streamed_message.dart';

abstract class Messager{
  Future<List<Message>?> GetMessages({required DateTime from, required int first});
  Future<Message?> CreateMessage({String? text, String? photo});
  Future<Message?> UpdateMessage({required String id, String? text, String? photo});
  Future<String?> DeleteMessage({required String id});
  Stream<StreamedMessage>? StreamMessages({required DateTime from});
}