import 'dart:async';


class ErrorService{
  StreamController<Error> controller = StreamController();
  Stream<Error> get stream => controller.stream;

  void Add(Error error){
    controller.add(error);
  }
  void AddString(String error){
    controller.add(UnsupportedError(error));
  }
  static final ErrorService _singleton = ErrorService._internal();

  factory ErrorService() {
    return _singleton;
  }

  ErrorService._internal();
}