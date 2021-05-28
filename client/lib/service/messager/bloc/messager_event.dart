part of 'messager_bloc.dart';

@immutable
abstract class MessagerEvent {}

class MessagerAdd extends MessagerEvent {
  final u.Message message;

  MessagerAdd(this.message);
}

class MessagerUpdate extends MessagerEvent {
  final u.Message message;

  MessagerUpdate(this.message);
}

class MessagerDelete extends MessagerEvent {
  final String id;

  MessagerDelete(this.id);
}

class MessagerList extends MessagerEvent {
  final List<u.Message> messages;

  MessagerList(this.messages);
}

class MessagerRefresh extends MessagerEvent{
  
}