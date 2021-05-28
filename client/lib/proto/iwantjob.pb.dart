///
//  Generated code. Do not modify.
//  source: proto/iwantjob.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DeletedMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletedMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeletedMessage._() : super();
  factory DeletedMessage({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeletedMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletedMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletedMessage clone() => DeletedMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletedMessage copyWith(void Function(DeletedMessage) updates) => super.copyWith((message) => updates(message as DeletedMessage)) as DeletedMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletedMessage create() => DeletedMessage._();
  DeletedMessage createEmptyInstance() => create();
  static $pb.PbList<DeletedMessage> createRepeated() => $pb.PbList<DeletedMessage>();
  @$core.pragma('dart2js:noInline')
  static DeletedMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletedMessage>(create);
  static DeletedMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class StreamedMessahge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamedMessahge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opType', protoName: 'opType')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..aOM<MUser>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: MUser.create)
    ..hasRequiredFields = false
  ;

  StreamedMessahge._() : super();
  factory StreamedMessahge({
    $core.String? fid,
    $core.String? id,
    $core.String? text,
    $core.String? photo,
    $core.String? opType,
    $fixnum.Int64? createdAt,
    MUser? user,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
    }
    if (id != null) {
      _result.id = id;
    }
    if (text != null) {
      _result.text = text;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    if (opType != null) {
      _result.opType = opType;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory StreamedMessahge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamedMessahge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamedMessahge clone() => StreamedMessahge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamedMessahge copyWith(void Function(StreamedMessahge) updates) => super.copyWith((message) => updates(message as StreamedMessahge)) as StreamedMessahge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamedMessahge create() => StreamedMessahge._();
  StreamedMessahge createEmptyInstance() => create();
  static $pb.PbList<StreamedMessahge> createRepeated() => $pb.PbList<StreamedMessahge>();
  @$core.pragma('dart2js:noInline')
  static StreamedMessahge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamedMessahge>(create);
  static StreamedMessahge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get photo => $_getSZ(3);
  @$pb.TagNumber(4)
  set photo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoto() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoto() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get opType => $_getSZ(4);
  @$pb.TagNumber(5)
  set opType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpType() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  MUser get user => $_getN(6);
  @$pb.TagNumber(7)
  set user(MUser v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUser() => $_has(6);
  @$pb.TagNumber(7)
  void clearUser() => clearField(7);
  @$pb.TagNumber(7)
  MUser ensureUser() => $_ensure(6);
}

class Messages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Messages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..pc<Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  Messages._() : super();
  factory Messages({
    $core.Iterable<Message>? messages,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory Messages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Messages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Messages clone() => Messages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Messages copyWith(void Function(Messages) updates) => super.copyWith((message) => updates(message as Messages)) as Messages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Messages create() => Messages._();
  Messages createEmptyInstance() => create();
  static $pb.PbList<Messages> createRepeated() => $pb.PbList<Messages>();
  @$core.pragma('dart2js:noInline')
  static Messages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Messages>(create);
  static Messages? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Message> get messages => $_getList(0);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..aOM<MUser>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: MUser.create)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.String? fid,
    $core.String? id,
    $core.String? text,
    $core.String? photo,
    $fixnum.Int64? createdAt,
    MUser? user,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
    }
    if (id != null) {
      _result.id = id;
    }
    if (text != null) {
      _result.text = text;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get photo => $_getSZ(3);
  @$pb.TagNumber(4)
  set photo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoto() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoto() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  MUser get user => $_getN(5);
  @$pb.TagNumber(6)
  set user(MUser v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUser() => $_has(5);
  @$pb.TagNumber(6)
  void clearUser() => clearField(6);
  @$pb.TagNumber(6)
  MUser ensureUser() => $_ensure(5);
}

class MUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Role', protoName: 'Role')
    ..hasRequiredFields = false
  ;

  MUser._() : super();
  factory MUser({
    $core.String? name,
    $core.String? role,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (role != null) {
      _result.role = role;
    }
    return _result;
  }
  factory MUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MUser clone() => MUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MUser copyWith(void Function(MUser) updates) => super.copyWith((message) => updates(message as MUser)) as MUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MUser create() => MUser._();
  MUser createEmptyInstance() => create();
  static $pb.PbList<MUser> createRepeated() => $pb.PbList<MUser>();
  @$core.pragma('dart2js:noInline')
  static MUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MUser>(create);
  static MUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);
}

class getMessagesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getMessagesReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'first', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  getMessagesReq._() : super();
  factory getMessagesReq({
    $fixnum.Int64? from,
    $core.int? first,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (first != null) {
      _result.first = first;
    }
    return _result;
  }
  factory getMessagesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getMessagesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getMessagesReq clone() => getMessagesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getMessagesReq copyWith(void Function(getMessagesReq) updates) => super.copyWith((message) => updates(message as getMessagesReq)) as getMessagesReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getMessagesReq create() => getMessagesReq._();
  getMessagesReq createEmptyInstance() => create();
  static $pb.PbList<getMessagesReq> createRepeated() => $pb.PbList<getMessagesReq>();
  @$core.pragma('dart2js:noInline')
  static getMessagesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getMessagesReq>(create);
  static getMessagesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get from => $_getI64(0);
  @$pb.TagNumber(1)
  set from($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get first => $_getIZ(1);
  @$pb.TagNumber(2)
  set first($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirst() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirst() => clearField(2);
}

class createMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'createMessageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo')
    ..hasRequiredFields = false
  ;

  createMessageReq._() : super();
  factory createMessageReq({
    $core.String? text,
    $core.String? photo,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory createMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory createMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  createMessageReq clone() => createMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  createMessageReq copyWith(void Function(createMessageReq) updates) => super.copyWith((message) => updates(message as createMessageReq)) as createMessageReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static createMessageReq create() => createMessageReq._();
  createMessageReq createEmptyInstance() => create();
  static $pb.PbList<createMessageReq> createRepeated() => $pb.PbList<createMessageReq>();
  @$core.pragma('dart2js:noInline')
  static createMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<createMessageReq>(create);
  static createMessageReq? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get photo => $_getSZ(1);
  @$pb.TagNumber(3)
  set photo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoto() => $_has(1);
  @$pb.TagNumber(3)
  void clearPhoto() => clearField(3);
}

class updateMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'updateMessageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo')
    ..hasRequiredFields = false
  ;

  updateMessageReq._() : super();
  factory updateMessageReq({
    $core.String? id,
    $core.String? text,
    $core.String? photo,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (text != null) {
      _result.text = text;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory updateMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory updateMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  updateMessageReq clone() => updateMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  updateMessageReq copyWith(void Function(updateMessageReq) updates) => super.copyWith((message) => updates(message as updateMessageReq)) as updateMessageReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static updateMessageReq create() => updateMessageReq._();
  updateMessageReq createEmptyInstance() => create();
  static $pb.PbList<updateMessageReq> createRepeated() => $pb.PbList<updateMessageReq>();
  @$core.pragma('dart2js:noInline')
  static updateMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<updateMessageReq>(create);
  static updateMessageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get photo => $_getSZ(2);
  @$pb.TagNumber(3)
  set photo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoto() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoto() => clearField(3);
}

class streamMessagesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'streamMessagesReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from')
    ..hasRequiredFields = false
  ;

  streamMessagesReq._() : super();
  factory streamMessagesReq({
    $fixnum.Int64? from,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    return _result;
  }
  factory streamMessagesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory streamMessagesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  streamMessagesReq clone() => streamMessagesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  streamMessagesReq copyWith(void Function(streamMessagesReq) updates) => super.copyWith((message) => updates(message as streamMessagesReq)) as streamMessagesReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static streamMessagesReq create() => streamMessagesReq._();
  streamMessagesReq createEmptyInstance() => create();
  static $pb.PbList<streamMessagesReq> createRepeated() => $pb.PbList<streamMessagesReq>();
  @$core.pragma('dart2js:noInline')
  static streamMessagesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<streamMessagesReq>(create);
  static streamMessagesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get from => $_getI64(0);
  @$pb.TagNumber(1)
  set from($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);
}

class deleteMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deleteMessageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  deleteMessageReq._() : super();
  factory deleteMessageReq({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory deleteMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory deleteMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  deleteMessageReq clone() => deleteMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  deleteMessageReq copyWith(void Function(deleteMessageReq) updates) => super.copyWith((message) => updates(message as deleteMessageReq)) as deleteMessageReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static deleteMessageReq create() => deleteMessageReq._();
  deleteMessageReq createEmptyInstance() => create();
  static $pb.PbList<deleteMessageReq> createRepeated() => $pb.PbList<deleteMessageReq>();
  @$core.pragma('dart2js:noInline')
  static deleteMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<deleteMessageReq>(create);
  static deleteMessageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.String? id,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);
}

class RefreshReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken')
    ..hasRequiredFields = false
  ;

  RefreshReq._() : super();
  factory RefreshReq({
    $core.String? refreshToken,
  }) {
    final _result = create();
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    return _result;
  }
  factory RefreshReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshReq clone() => RefreshReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshReq copyWith(void Function(RefreshReq) updates) => super.copyWith((message) => updates(message as RefreshReq)) as RefreshReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshReq create() => RefreshReq._();
  RefreshReq createEmptyInstance() => create();
  static $pb.PbList<RefreshReq> createRepeated() => $pb.PbList<RefreshReq>();
  @$core.pragma('dart2js:noInline')
  static RefreshReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshReq>(create);
  static RefreshReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => clearField(1);
}

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

class CubeStream extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CubeStream', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otype')
    ..hasRequiredFields = false
  ;

  CubeStream._() : super();
  factory CubeStream({
    $core.String? fid,
    $core.String? url,
    $core.String? type,
    $core.String? source,
    $core.String? id,
    $core.String? otype,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
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
    if (otype != null) {
      _result.otype = otype;
    }
    return _result;
  }
  factory CubeStream.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CubeStream.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CubeStream clone() => CubeStream()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CubeStream copyWith(void Function(CubeStream) updates) => super.copyWith((message) => updates(message as CubeStream)) as CubeStream; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CubeStream create() => CubeStream._();
  CubeStream createEmptyInstance() => create();
  static $pb.PbList<CubeStream> createRepeated() => $pb.PbList<CubeStream>();
  @$core.pragma('dart2js:noInline')
  static CubeStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CubeStream>(create);
  static CubeStream? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFid() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(5)
  void clearSource() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get id => $_getSZ(4);
  @$pb.TagNumber(6)
  set id($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get otype => $_getSZ(5);
  @$pb.TagNumber(7)
  set otype($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasOtype() => $_has(5);
  @$pb.TagNumber(7)
  void clearOtype() => clearField(7);
}

class Cube extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cube', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  Cube._() : super();
  factory Cube({
    $core.String? fid,
    $core.String? url,
    $core.String? type,
    $core.String? source,
    $core.String? id,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
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

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(5)
  void clearSource() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get id => $_getSZ(4);
  @$pb.TagNumber(6)
  set id($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);
}

class createCubeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'createCubeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..hasRequiredFields = false
  ;

  createCubeReq._() : super();
  factory createCubeReq({
    $core.String? fid,
    $core.String? url,
    $core.String? type,
    $core.String? source,
  }) {
    final _result = create();
    if (fid != null) {
      _result.fid = fid;
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

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(3);
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

