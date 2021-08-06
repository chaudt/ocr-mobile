///
//  Generated code. Do not modify.
//  source: uploadfile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'uploadfile.pb.dart' as $0;
export 'uploadfile.pb.dart';

class UploadImageClient extends $grpc.Client {
  static final _$uploadImage =
      $grpc.ClientMethod<$0.UploadImageRequest, $0.Void>(
          '/UploadImage/UploadImage',
          ($0.UploadImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Void.fromBuffer(value));

  UploadImageClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Void> uploadImage(
      $async.Stream<$0.UploadImageRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadImage, request, options: options)
        .single;
  }
}

abstract class UploadImageServiceBase extends $grpc.Service {
  $core.String get $name => 'UploadImage';

  UploadImageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UploadImageRequest, $0.Void>(
        'UploadImage',
        uploadImage,
        true,
        false,
        ($core.List<$core.int> value) =>
            $0.UploadImageRequest.fromBuffer(value),
        ($0.Void value) => value.writeToBuffer()));
  }

  $async.Future<$0.Void> uploadImage(
      $grpc.ServiceCall call, $async.Stream<$0.UploadImageRequest> request);
}
