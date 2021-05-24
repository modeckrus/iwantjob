import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/service/error_service.dart';
import 'package:meta/meta.dart';

part 'error_state.dart';

class ErrorCubit extends Cubit<ErrorState> {
  ErrorCubit() : super(ErrorInitial()){
    subscription = ErrorService().stream.listen((event) { 
      this.emit(ErrorHasState(event));
    });
  }
  StreamSubscription<Error>? subscription;
}
