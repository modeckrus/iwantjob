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

  $async.Future<$0.List_> getList(
      $grpc.ServiceCall call, $0.getListReq request);
  $async.Future<$0.Cube> createCube(
      $grpc.ServiceCall call, $0.createCubeReq request);
  $async.Future<$0.ImageResp> uploadImage(
      $grpc.ServiceCall call, $0.UploadImageReq request);
}
