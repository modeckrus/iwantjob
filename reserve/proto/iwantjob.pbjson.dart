///
//  Generated code. Do not modify.
//  source: proto/iwantjob.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
@$core.Deprecated('Use cubeDescriptor instead')
const Cube$json = const {
  '1': 'Cube',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'id', '3': 6, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `Cube`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cubeDescriptor = $convert.base64Decode('CgRDdWJlEhAKA2ZpZBgBIAEoCVIDZmlkEhAKA3VpZBgCIAEoCVIDdWlkEhAKA3VybBgDIAEoCVIDdXJsEhIKBHR5cGUYBCABKAlSBHR5cGUSFgoGc291cmNlGAUgASgJUgZzb3VyY2USDgoCaWQYBiABKAlSAmlk');
@$core.Deprecated('Use createCubeReqDescriptor instead')
const createCubeReq$json = const {
  '1': 'createCubeReq',
  '2': const [
    const {'1': 'fid', '3': 1, '4': 1, '5': 9, '10': 'fid'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `createCubeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCubeReqDescriptor = $convert.base64Decode('Cg1jcmVhdGVDdWJlUmVxEhAKA2ZpZBgBIAEoCVIDZmlkEhAKA3VpZBgCIAEoCVIDdWlkEhAKA3VybBgDIAEoCVIDdXJsEhIKBHR5cGUYBCABKAlSBHR5cGUSFgoGc291cmNlGAUgASgJUgZzb3VyY2U=');
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
