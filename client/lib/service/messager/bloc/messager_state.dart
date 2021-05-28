part of 'messager_bloc.dart';

@immutable
abstract class MessagerState {}

class MessagerInitial extends MessagerState {}

class MessagerS extends MessagerState{
  final List<u.Message> messages;

  MessagerS(this.messages);
}