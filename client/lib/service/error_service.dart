import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

import 'auth.dart';

class ErrorService {
  StreamController<Error> controller = StreamController();
  Stream<Error> get stream => controller.stream;

  void Add(Error error) {
    controller.add(error);
  }

  void AddString(String error) {
    controller.add(UnsupportedError(error));
  }

  Future<void> handleGrpcError(GrpcError error) async {
    if (error.code == 3000) {
      print("token expired");
      await GetIt.I.get<Auth>().refresh();
    } else {
      ErrorService().AddString(error.toString());
    }
  }

  static final ErrorService _singleton = ErrorService._internal();

  factory ErrorService() {
    return _singleton;
  }

  ErrorService._internal();
}
