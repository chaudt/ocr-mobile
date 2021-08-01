///
//  Generated code. Do not modify.
//  source: lib/protos/fileUpload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use uploadImageRequestDescriptor instead')
const UploadImageRequest$json = const {
  '1': 'UploadImageRequest',
  '2': const [
    const {'1': 'fileName', '3': 1, '4': 1, '5': 9, '10': 'fileName'},
    const {'1': 'fileExtension', '3': 2, '4': 1, '5': 9, '10': 'fileExtension'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `UploadImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadImageRequestDescriptor = $convert.base64Decode('ChJVcGxvYWRJbWFnZVJlcXVlc3QSGgoIZmlsZU5hbWUYASABKAlSCGZpbGVOYW1lEiQKDWZpbGVFeHRlbnNpb24YAiABKAlSDWZpbGVFeHRlbnNpb24SEgoEZGF0YRgDIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use responseMessageDescriptor instead')
const ResponseMessage$json = const {
  '1': 'ResponseMessage',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `ResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseMessageDescriptor = $convert.base64Decode('Cg9SZXNwb25zZU1lc3NhZ2USEgoEZGF0YRgBIAEoCVIEZGF0YQ==');
