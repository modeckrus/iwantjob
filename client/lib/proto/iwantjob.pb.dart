///
//  Generated code. Do not modify.
//  source: proto/iwantjob.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ImageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  ImageResp._() : super();
  factory ImageResp({
    $core.String? url,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory ImageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageResp clone() => ImageResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageResp copyWith(void Function(ImageResp) updates) => super.copyWith((message) => updates(message as ImageResp)) as ImageResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageResp create() => ImageResp._();
  ImageResp createEmptyInstance() => create();
  static $pb.PbList<ImageResp> createRepeated() => $pb.PbList<ImageResp>();
  @$core.pragma('dart2js:noInline')
  static ImageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageResp>(create);
  static ImageResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

class getListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getListReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'first', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  getListReq._() : super();
  factory getListReq({
    $core.int? first,
    $core.int? offset,
  }) {
    final _result = create();
    if (first != null) {
      _result.first = first;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory getListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getListReq clone() => getListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getListReq copyWith(void Function(getListReq) updates) => super.copyWith((message) => updates(message as getListReq)) as getListReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getListReq create() => getListReq._();
  getListReq createEmptyInstance() => create();
  static $pb.PbList<getListReq> createRepeated() => $pb.PbList<getListReq>();
  @$core.pragma('dart2js:noInline')
  static getListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getListReq>(create);
  static getListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get first => $_getIZ(0);
  @$pb.TagNumber(1)
  set first($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirst() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirst() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

class List_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'List', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..pc<Cube>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'samples', $pb.PbFieldType.PM, subBuilder: Cube.create)
    ..hasRequiredFields = false
  ;

  List_._() : super();
  factory List_({
    $core.Iterable<Cube>? samples,
  }) {
    final _result = create();
    if (samples != null) {
      _result.samples.addAll(samples);
    }
    return _result;
  }
  factory List_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory List_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  List_ clone() => List_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  List_ copyWith(void Function(List_) updates) => super.copyWith((message) => updates(message as List_)) as List_; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static List_ create() => List_._();
  List_ createEmptyInstance() => create();
  static $pb.PbList<List_> createRepeated() => $pb.PbList<List_>();
  @$core.pragma('dart2js:noInline')
  static List_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<List_>(create);
  static List_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Cube> get samples => $_getList(0);
}

class Cube extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cube', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  Cube._() : super();
  factory Cube({
    $core.String? fid,
    $core.String? uid,
    $core.String? url,
    $core.String? type,
    $core.String? source,
    $core.String? id,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    if (url != null) {
      _result.url = url;
    }
    if (type != null) {
      _result.type = type;
    }
    if (source != null) {
      _result.source = source;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory Cube.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube clone() => Cube()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube copyWith(void Function(Cube) updates) => super.copyWith((message) => updates(message as Cube)) as Cube; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cube create() => Cube._();
  Cube createEmptyInstance() => create();
  static $pb.PbList<Cube> createRepeated() => $pb.PbList<Cube>();
  @$core.pragma('dart2js:noInline')
  static Cube getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube>(create);
  static Cube? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(4);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(4);
  @$pb.TagNumber(5)
  void clearSource() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get id => $_getSZ(5);
  @$pb.TagNumber(6)
  set id($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);
}

class createCubeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'createCubeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..hasRequiredFields = false
  ;

  createCubeReq._() : super();
  factory createCubeReq({
    $core.String? fid,
    $core.String? uid,
    $core.String? url,
    $core.String? type,
    $core.String? source,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    if (url != null) {
      _result.url = url;
    }
    if (type != null) {
      _result.type = type;
    }
    if (source != null) {
      _result.source = source;
    }
    return _result;
  }
  factory createCubeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory createCubeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  createCubeReq clone() => createCubeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  createCubeReq copyWith(void Function(createCubeReq) updates) => super.copyWith((message) => updates(message as createCubeReq)) as createCubeReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static createCubeReq create() => createCubeReq._();
  createCubeReq createEmptyInstance() => create();
  static $pb.PbList<createCubeReq> createRepeated() => $pb.PbList<createCubeReq>();
  @$core.pragma('dart2js:noInline')
  static createCubeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<createCubeReq>(create);
  static createCubeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(4);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(4);
  @$pb.TagNumber(5)
  void clearSource() => clearField(5);
}

class UploadImageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadImageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadImageReq._() : super();
  factory UploadImageReq({
    $core.String? fid,
    $core.List<$core.int>? image,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
    }
    if (image != null) {
      _result.image = image;
    }
    return _result;
  }
  factory UploadImageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadImageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadImageReq clone() => UploadImageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadImageReq copyWith(void Function(UploadImageReq) updates) => super.copyWith((message) => updates(message as UploadImageReq)) as UploadImageReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadImageReq create() => UploadImageReq._();
  UploadImageReq createEmptyInstance() => create();
  static $pb.PbList<UploadImageReq> createRepeated() => $pb.PbList<UploadImageReq>();
  @$core.pragma('dart2js:noInline')
  static UploadImageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadImageReq>(create);
  static UploadImageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get image => $_getN(1);
  @$pb.TagNumber(2)
  set image($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => clearField(2);
}

