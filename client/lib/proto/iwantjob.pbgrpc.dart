///
//  Generated code. Do not modify.
//  source: proto/iwantjob.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'iwantjob.pb.dart' as $0;
export 'iwantjob.pb.dart';

class DbClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$0.getListReq, $0.List_>(
      '/model.Db/GetList',
      ($0.getListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.List_.fromBuffer(value));
  static final _$createCube = $grpc.ClientMethod<$0.createCubeReq, $0.Cube>(
      '/model.Db/CreateCube',
      ($0.createCubeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Cube.fromBuffer(value));
  static final _$uploadImage =
      $grpc.ClientMethod<$0.UploadImageReq, $0.ImageResp>(
          '/model.Db/UploadImage',
          ($0.UploadImageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImageResp.fromBuffer(value));
  static final _$streamList = $grpc.ClientMethod<$0.getListReq, $0.CubeStream>(
      '/model.Db/StreamList',
      ($0.getListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CubeStream.fromBuffer(value));

  DbClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.List_> getList($0.getListReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$0.Cube> createCube($0.createCubeReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCube, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageResp> uploadImage($0.UploadImageReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadImage, request, options: options);
  }

  $grpc.ResponseStream<$0.CubeStream> streamList($0.getListReq request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamList, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DbServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Db';

  DbServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.getListReq, $0.List_>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.getListReq.fromBuffer(value),
        ($0.List_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.createCubeReq, $0.Cube>(
        'CreateCube',
        createCube_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.createCubeReq.fromBuffer(value),
        ($0.Cube value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UploadImageReq, $0.ImageResp>(
        'UploadImage',
        uploadImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UploadImageReq.fromBuffer(value),
        ($0.ImageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.getListReq, $0.CubeStream>(
        'StreamList',
        streamList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.getListReq.fromBuffer(value),
        ($0.CubeStream value) => value.writeToBuffer()));
  }

  $async.Future<$0.List_> getList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.getListReq> request) async {
    return getList(call, await request);
  }

  $async.Future<$0.Cube> createCube_Pre(
      $grpc.ServiceCall call, $async.Future<$0.createCubeReq> request) async {
    return createCube(call, await request);
  }

  $async.Future<$0.ImageResp> uploadImage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UploadImageReq> request) async {
    return uploadImage(call, await request);
  }

  $async.Stream<$0.CubeStream> streamList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.getListReq> request) async* {
    yield* streamList(call, await request);
  }

  $async.Future<$0.List_> getList(
      $grpc.ServiceCall call, $0.getListReq request);
  $async.Future<$0.Cube> createCube(
      $grpc.ServiceCall call, $0.createCubeReq request);
  $async.Future<$0.ImageResp> uploadImage(
      $grpc.ServiceCall call, $0.UploadImageReq request);
  $async.Stream<$0.CubeStream> streamList(
      $grpc.ServiceCall call, $0.getListReq request);
}

class MessagerClient extends $grpc.Client {
  static final _$getMessages =
      $grpc.ClientMethod<$0.getMessagesReq, $0.Messages>(
          '/model.Messager/GetMessages',
          ($0.getMessagesReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Messages.fromBuffer(value));
  static final _$createMessage =
      $grpc.ClientMethod<$0.createMessageReq, $0.Message>(
          '/model.Messager/CreateMessage',
          ($0.createMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Message.fromBuffer(value));
  static final _$updateMessage =
      $grpc.ClientMethod<$0.updateMessageReq, $0.Message>(
          '/model.Messager/UpdateMessage',
          ($0.updateMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Message.fromBuffer(value));
  static final _$deleteMessage =
      $grpc.ClientMethod<$0.deleteMessageReq, $0.DeletedMessage>(
          '/model.Messager/DeleteMessage',
          ($0.deleteMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DeletedMessage.fromBuffer(value));
  static final _$streamMessages =
      $grpc.ClientMethod<$0.streamMessagesReq, $0.StreamedMessahge>(
          '/model.Messager/StreamMessages',
          ($0.streamMessagesReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StreamedMessahge.fromBuffer(value));

  MessagerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Messages> getMessages($0.getMessagesReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMessages, request, options: options);
  }

  $grpc.ResponseFuture<$0.Message> createMessage($0.createMessageReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Message> updateMessage($0.updateMessageReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeletedMessage> deleteMessage(
      $0.deleteMessageReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMessage, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamedMessahge> streamMessages(
      $0.streamMessagesReq request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamMessages, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class MessagerServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Messager';

  MessagerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.getMessagesReq, $0.Messages>(
        'GetMessages',
        getMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.getMessagesReq.fromBuffer(value),
        ($0.Messages value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.createMessageReq, $0.Message>(
        'CreateMessage',
        createMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.createMessageReq.fromBuffer(value),
        ($0.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.updateMessageReq, $0.Message>(
        'UpdateMessage',
        updateMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.updateMessageReq.fromBuffer(value),
        ($0.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.deleteMessageReq, $0.DeletedMessage>(
        'DeleteMessage',
        deleteMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.deleteMessageReq.fromBuffer(value),
        ($0.DeletedMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.streamMessagesReq, $0.StreamedMessahge>(
        'StreamMessages',
        streamMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.streamMessagesReq.fromBuffer(value),
        ($0.StreamedMessahge value) => value.writeToBuffer()));
  }

  $async.Future<$0.Messages> getMessages_Pre(
      $grpc.ServiceCall call, $async.Future<$0.getMessagesReq> request) async {
    return getMessages(call, await request);
  }

  $async.Future<$0.Message> createMessage_Pre($grpc.ServiceCall call,
      $async.Future<$0.createMessageReq> request) async {
    return createMessage(call, await request);
  }

  $async.Future<$0.Message> updateMessage_Pre($grpc.ServiceCall call,
      $async.Future<$0.updateMessageReq> request) async {
    return updateMessage(call, await request);
  }

  $async.Future<$0.DeletedMessage> deleteMessage_Pre($grpc.ServiceCall call,
      $async.Future<$0.deleteMessageReq> request) async {
    return deleteMessage(call, await request);
  }

  $async.Stream<$0.StreamedMessahge> streamMessages_Pre($grpc.ServiceCall call,
      $async.Future<$0.streamMessagesReq> request) async* {
    yield* streamMessages(call, await request);
  }

  $async.Future<$0.Messages> getMessages(
      $grpc.ServiceCall call, $0.getMessagesReq request);
  $async.Future<$0.Message> createMessage(
      $grpc.ServiceCall call, $0.createMessageReq request);
  $async.Future<$0.Message> updateMessage(
      $grpc.ServiceCall call, $0.updateMessageReq request);
  $async.Future<$0.DeletedMessage> deleteMessage(
      $grpc.ServiceCall call, $0.deleteMessageReq request);
  $async.Stream<$0.StreamedMessahge> streamMessages(
      $grpc.ServiceCall call, $0.streamMessagesReq request);
}

class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/model.AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$singUp = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/model.AuthService/SingUp',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$refresh = $grpc.ClientMethod<$0.RefreshReq, $0.LoginResponse>(
      '/model.AuthService/Refresh',
      ($0.RefreshReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> singUp($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$singUp, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> refresh($0.RefreshReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'model.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'SingUp',
        singUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RefreshReq, $0.LoginResponse>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RefreshReq.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.LoginResponse> singUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return singUp(call, await request);
  }

  $async.Future<$0.LoginResponse> refresh_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RefreshReq> request) async {
    return refresh(call, await request);
  }

  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.LoginResponse> singUp(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.LoginResponse> refresh(
      $grpc.ServiceCall call, $0.RefreshReq request);
}
