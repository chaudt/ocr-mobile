import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_picker/image_picker.dart';
import 'package:orc_mobile/common/connectGrpc.dart';
import 'package:orc_mobile/service/upload_File.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Variables
  File imageFile = new File('');
  List<int> bytes = [];

  SpeedDial _speedDialMain() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 24.0),
      closeManually: false,
      visible: true,
      curve: Curves.easeInBack,
      children: [
        SpeedDialChild(
            onTap: _getFromGallery,
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.photo_album),
            label: 'Open File Image',
            labelBackgroundColor: Colors.redAccent,
            labelStyle: TextStyle(color: Colors.white)),
        SpeedDialChild(
            onTap: _getFromCamera,
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.camera),
            label: 'Open Camera',
            labelBackgroundColor: Colors.blueGrey,
            labelStyle: TextStyle(color: Colors.white)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Infomation container'),
              imageFile.path == ''
                  ? Text('No Image')
                  : Flexible(
                      child: Image.file(
                        imageFile,
                        fit: BoxFit.cover,
                      ),
                    ),
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: "Courier Prime",
                    ),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    UploadFileService.uploadFile(
                        GrpcClientSingleton().channel, imageFile);
                  },
                  child: Text(
                    "Submit Image",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: _speedDialMain(),
    );
  }

  _getFromGallery() async {
    // ignore: deprecated_member_use
    PickedFile? pickedFile =
        // ignore: deprecated_member_use
        await ImagePicker().getImage(source: ImageSource.gallery);
    // ignore: unnecessary_null_comparison
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile =
        // ignore: deprecated_member_use
        await ImagePicker().getImage(source: ImageSource.camera);
    // ignore: unnecessary_null_comparison
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
