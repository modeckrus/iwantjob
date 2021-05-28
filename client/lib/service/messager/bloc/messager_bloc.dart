import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/service/messager/message.dart' as u;
import 'package:client/service/messager/messager.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';

import '../../db.dart';

part 'messager_event.dart';
part 'messager_state.dart';

class MessagerBloc extends Bloc<MessagerEvent, MessagerState> {
  MessagerBloc() : super(MessagerInitial()) {
    GetIt.I
        .get<Messager>()
        .StreamMessages(from: DateTime.now().subtract(Duration(days: 1)))
        ?.listen((event) {
      switch (event.opType) {
        case 'insert':
          add(MessagerAdd(u.Message(event.id, event.fid, event.text,
              event.photo, event.createdAt, event.user)));
          break;
        case 'update':
          add(MessagerUpdate(u.Message(event.id, event.fid, event.text,
              event.photo, event.createdAt, event.user)));
          break;
        case 'delete':
          add(MessagerDelete(event.id));
          break;
        default:
      }
    });
    GetIt.I
        .get<Messager>()
        .GetMessages(from: (DateTime.now().subtract(Duration(days: 50))), first: 100)
        .then((value) {
      if (value != null) {
        messages.addAll(value);
        addMessages();
      }
    });
  }
  List<u.Message> messages = [];
  void addMessages() {
    messages.sort((m1, m2) {
      return m1.createdAt.compareTo(m2.createdAt);
    });
    add(MessagerList(messages));
  }

  @override
  Stream<MessagerState> mapEventToState(
    MessagerEvent event,
  ) async* {
    if (event is MessagerRefresh) {
      messages = [];
      GetIt.I
          .get<Messager>()
          .GetMessages(from:(DateTime.now().subtract(Duration(days: 50))), first: 100)
          .then((value) {
        if (value != null) {
          messages.addAll(value);
          addMessages();
          add(MessagerList(messages));
        }
      });
    }
    if (event is MessagerList) {
      for (var i = 0; i < event.messages.length; i++) {
        final message = event.messages[i];
        if (!(messages.contains(message))) {
          messages.add(message);
          messages.sort((m1, m2) {
            return m1.createdAt.compareTo(m2.createdAt);
          });
        }
      }
      yield MessagerS(messages);
    } else if (event is MessagerAdd) {
      if (!(messages.contains(event.message))) {
        messages.add(event.message);
        addMessages();
        add(MessagerList(messages));
      }
      yield MessagerS(messages);
    } else if (event is MessagerUpdate) {
      for (var i = 0; i < messages.length; i++) {
        final message = messages[i];
        if (message.id == event.message) {
          messages[i] = event.message;
          addMessages();
          add(MessagerList(messages));
        }
      }
      yield MessagerS(messages);
    } else if (event is MessagerDelete) {
      for (var i = 0; i < messages.length; i++) {
        final message = messages[i];
        if (message.id == event.id) {
          messages.removeAt(i);
          addMessages();
          add(MessagerList(messages));
        }
      }
      yield MessagerS(messages);
    }
  }
}
