///
//  Generated code. Do not modify.
//  source: lib/protos/fileUpload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'fileUpload.pb.dart' as $0;
export 'fileUpload.pb.dart';

class ImageStoreClient extends $grpc.Client {
  static final _$upload =
      $grpc.ClientMethod<$0.UploadImageRequest, $0.ResponseMessage>(
          '/ImageStore/Upload',
          ($0.UploadImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResponseMessage.fromBuffer(value));

  ImageStoreClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResponseMessage> upload($0.UploadImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload, request, options: options);
  }
}

abstract class ImageStoreServiceBase extends $grpc.Service {
  $core.String get $name => 'ImageStore';

  ImageStoreServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UploadImageRequest, $0.ResponseMessage>(
        'Upload',
        upload_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UploadImageRequest.fromBuffer(value),
        ($0.ResponseMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResponseMessage> upload_Pre($grpc.ServiceCall call,
      $async.Future<$0.UploadImageRequest> request) async {
    return upload(call, await request);
  }

  $async.Future<$0.ResponseMessage> upload(
      $grpc.ServiceCall call, $0.UploadImageRequest request);
}
