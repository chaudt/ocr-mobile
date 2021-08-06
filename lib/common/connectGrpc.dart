import 'package:grpc/grpc.dart';
import 'package:orc_mobile/gen/uploadfile.pbgrpc.dart';

class GrpcClientSingleton {
  late ClientChannel channel;
  late UploadImageClient stub;

  static final GrpcClientSingleton _singleton = GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    channel = ClientChannel('14.161.28.224',
        port: 8080,
        options: ChannelOptions(
          credentials: ChannelCredentials.secure(),
        ));
  }
}
