///
//  Generated code. Do not modify.
//  source: lib/protos/fileUpload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UploadImageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadImageRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName', protoName: 'fileName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileExtension', protoName: 'fileExtension')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadImageRequest._() : super();
  factory UploadImageRequest({
    $core.String? fileName,
    $core.String? fileExtension,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (fileExtension != null) {
      _result.fileExtension = fileExtension;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory UploadImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadImageRequest clone() => UploadImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadImageRequest copyWith(void Function(UploadImageRequest) updates) => super.copyWith((message) => updates(message as UploadImageRequest)) as UploadImageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadImageRequest create() => UploadImageRequest._();
  UploadImageRequest createEmptyInstance() => create();
  static $pb.PbList<UploadImageRequest> createRepeated() => $pb.PbList<UploadImageRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadImageRequest>(create);
  static UploadImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileExtension => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileExtension($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileExtension() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileExtension() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class ResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseMessage', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data')
    ..hasRequiredFields = false
  ;

  ResponseMessage._() : super();
  factory ResponseMessage({
    $core.String? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory ResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseMessage clone() => ResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseMessage copyWith(void Function(ResponseMessage) updates) => super.copyWith((message) => updates(message as ResponseMessage)) as ResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseMessage create() => ResponseMessage._();
  ResponseMessage createEmptyInstance() => create();
  static $pb.PbList<ResponseMessage> createRepeated() => $pb.PbList<ResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static ResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseMessage>(create);
  static ResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

