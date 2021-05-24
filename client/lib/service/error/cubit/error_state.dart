part of 'error_cubit.dart';

@immutable
abstract class ErrorState {}

class ErrorInitial extends ErrorState {}
class ErrorHasState extends ErrorState{
  final Error error;

  ErrorHasState(this.error);

}