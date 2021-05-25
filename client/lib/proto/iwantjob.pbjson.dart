///
//  Generated code. Do not modify.
//  source: proto/iwantjob.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deletedMessageDescriptor instead')
const DeletedMessage$json = const {
  '1': 'DeletedMessage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeletedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletedMessageDescriptor = $convert.base64Decode('Cg5EZWxldGVkTWVzc2FnZRIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use streamedMessahgeDescriptor instead')
const StreamedMessahge$json = const {
  '1': 'StreamedMessahge',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'photo', '3': 4, '4': 1, '5': 9, '10': 'photo'},
    const {'1': 'opType', '3': 5, '4': 1, '5': 9, '10': 'opType'},
    const {'1': 'createdAt', '3': 6, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `StreamedMessahge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamedMessahgeDescriptor = $convert.base64Decode('ChBTdHJlYW1lZE1lc3NhaGdlEhAKA2ZpZBgBIAEoCVIDZmlkEg4KAmlkGAIgASgJUgJpZBISCgR0ZXh0GAMgASgJUgR0ZXh0EhQKBXBob3RvGAQgASgJUgVwaG90bxIWCgZvcFR5cGUYBSABKAlSBm9wVHlwZRIcCgljcmVhdGVkQXQYBiABKANSCWNyZWF0ZWRBdA==');
@$core.Deprecated('Use messagesDescriptor instead')
const Messages$json = const {
  '1': 'Messages',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.model.Message', '10': 'messages'},
  ],
};

/// Descriptor for `Messages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messagesDescriptor = $convert.base64Decode('CghNZXNzYWdlcxIqCghtZXNzYWdlcxgBIAMoCzIOLm1vZGVsLk1lc3NhZ2VSCG1lc3NhZ2Vz');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'photo', '3': 4, '4': 1, '5': 9, '10': 'photo'},
    const {'1': 'createdAt', '3': 5, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhAKA2ZpZBgBIAEoCVIDZmlkEg4KAmlkGAIgASgJUgJpZBISCgR0ZXh0GAMgASgJUgR0ZXh0EhQKBXBob3RvGAQgASgJUgVwaG90bxIcCgljcmVhdGVkQXQYBSABKANSCWNyZWF0ZWRBdA==');
@$core.Deprecated('Use getMessagesReqDescriptor instead')
const getMessagesReq$json = const {
  '1': 'getMessagesReq',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 3, '10': 'from'},
    const {'1': 'first', '3': 2, '4': 1, '5': 5, '10': 'first'},
  ],
};

/// Descriptor for `getMessagesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessagesReqDescriptor = $convert.base64Decode('Cg5nZXRNZXNzYWdlc1JlcRISCgRmcm9tGAEgASgDUgRmcm9tEhQKBWZpcnN0GAIgASgFUgVmaXJzdA==');
@$core.Deprecated('Use createMessageReqDescriptor instead')
const createMessageReq$json = const {
  '1': 'createMessageReq',
  '2': const [
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'photo', '3': 3, '4': 1, '5': 9, '10': 'photo'},
  ],
};

/// Descriptor for `createMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createMessageReqDescriptor = $convert.base64Decode('ChBjcmVhdGVNZXNzYWdlUmVxEhIKBHRleHQYAiABKAlSBHRleHQSFAoFcGhvdG8YAyABKAlSBXBob3Rv');
@$core.Deprecated('Use updateMessageReqDescriptor instead')
const updateMessageReq$json = const {
  '1': 'updateMessageReq',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'photo', '3': 3, '4': 1, '5': 9, '10': 'photo'},
  ],
};

/// Descriptor for `updateMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMessageReqDescriptor = $convert.base64Decode('ChB1cGRhdGVNZXNzYWdlUmVxEg4KAmlkGAEgASgJUgJpZBISCgR0ZXh0GAIgASgJUgR0ZXh0EhQKBXBob3RvGAMgASgJUgVwaG90bw==');
@$core.Deprecated('Use streamMessagesReqDescriptor instead')
const streamMessagesReq$json = const {
  '1': 'streamMessagesReq',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 3, '10': 'from'},
  ],
};

/// Descriptor for `streamMessagesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamMessagesReqDescriptor = $convert.base64Decode('ChFzdHJlYW1NZXNzYWdlc1JlcRISCgRmcm9tGAEgASgDUgRmcm9t');
@$core.Deprecated('Use deleteMessageReqDescriptor instead')
const deleteMessageReq$json = const {
  '1': 'deleteMessageReq',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `deleteMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMessageReqDescriptor = $convert.base64Decode('ChBkZWxldGVNZXNzYWdlUmVxEg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2VuEg4KAmlkGAMgASgJUgJpZA==');
@$core.Deprecated('Use refreshReqDescriptor instead')
const RefreshReq$json = const {
  '1': 'RefreshReq',
  '2': const [
    const {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshReqDescriptor = $convert.base64Decode('CgpSZWZyZXNoUmVxEiMKDXJlZnJlc2hfdG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use imageRespDescriptor instead')
const ImageResp$json = const {
  '1': 'ImageResp',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `ImageResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageRespDescriptor = $convert.base64Decode('CglJbWFnZVJlc3ASEAoDdXJsGAEgASgJUgN1cmw=');
@$core.Deprecated('Use getListReqDescriptor instead')
const getListReq$json = const {
  '1': 'getListReq',
  '2': const [
    const {'1': 'first', '3': 1, '4': 1, '5': 5, '10': 'first'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `getListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListReqDescriptor = $convert.base64Decode('CgpnZXRMaXN0UmVxEhQKBWZpcnN0GAEgASgFUgVmaXJzdBIWCgZvZmZzZXQYAiABKAVSBm9mZnNldA==');
@$core.Deprecated('Use list_Descriptor instead')
const List_$json = const {
  '1': 'List',
  '2': const [
    const {'1': 'samples', '3': 1, '4': 3, '5': 11, '6': '.model.Cube', '10': 'samples'},
  ],
};

/// Descriptor for `List`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List list_Descriptor = $convert.base64Decode('CgRMaXN0EiUKB3NhbXBsZXMYASADKAsyCy5tb2RlbC5DdWJlUgdzYW1wbGVz');
@$core.Deprecated('Use cubeStreamDescriptor instead')
const CubeStream$json = const {
  '1': 'CubeStream',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'id', '3': 6, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'otype', '3': 7, '4': 1, '5': 9, '10': 'otype'},
  ],
};

/// Descriptor for `CubeStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cubeStreamDescriptor = $convert.base64Decode('CgpDdWJlU3RyZWFtEhAKA2ZpZBgBIAEoCVIDZmlkEhAKA3VybBgDIAEoCVIDdXJsEhIKBHR5cGUYBCABKAlSBHR5cGUSFgoGc291cmNlGAUgASgJUgZzb3VyY2USDgoCaWQYBiABKAlSAmlkEhQKBW90eXBlGAcgASgJUgVvdHlwZQ==');
@$core.Deprecated('Use cubeDescriptor instead')
const Cube$json = const {
  '1': 'Cube',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'id', '3': 6, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `Cube`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cubeDescriptor = $convert.base64Decode('CgRDdWJlEhAKA2ZpZBgBIAEoCVIDZmlkEhAKA3VybBgDIAEoCVIDdXJsEhIKBHR5cGUYBCABKAlSBHR5cGUSFgoGc291cmNlGAUgASgJUgZzb3VyY2USDgoCaWQYBiABKAlSAmlk');
@$core.Deprecated('Use createCubeReqDescriptor instead')
const createCubeReq$json = const {
  '1': 'createCubeReq',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `createCubeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCubeReqDescriptor = $convert.base64Decode('Cg1jcmVhdGVDdWJlUmVxEhAKA2ZpZBgBIAEoCVIDZmlkEhAKA3VybBgDIAEoCVIDdXJsEhIKBHR5cGUYBCABKAlSBHR5cGUSFgoGc291cmNlGAUgASgJUgZzb3VyY2U=');
@$core.Deprecated('Use uploadImageReqDescriptor instead')
const UploadImageReq$json = const {
  '1': 'UploadImageReq',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'image', '3': 2, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `UploadImageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadImageReqDescriptor = $convert.base64Decode('Cg5VcGxvYWRJbWFnZVJlcRIQCgNmaWQYASABKAlSA2ZpZBIUCgVpbWFnZRgCIAEoDFIFaW1hZ2U=');
