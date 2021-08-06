import 'package:grpc/grpc.dart';
import 'package:orc_mobile/common/connectGrpc.dart';
import 'package:orc_mobile/gen/uploadfile.pbgrpc.dart';

class UploadFileService {
  UploadFileService(grpcClientSingleton);

  static Future<void> uploadFile(
      ClientChannel channel, dynamic imageFile) async {
    var client = UploadImageClient(GrpcClientSingleton().channel);

    List<int> bytes = imageFile.readAsBytesSync();

    var filename = imageFile.path.split('/').last;
    var fileNameWithoutExtension = filename.split('.')[0];

    Stream<UploadImageRequest> generateroute() async* {
      final point = UploadImageRequest(
          fileName: filename,
          fileNameWithoutExtension: fileNameWithoutExtension,
          data: bytes);
      yield point;
    }

    await client.uploadImage(generateroute());
  }
}
