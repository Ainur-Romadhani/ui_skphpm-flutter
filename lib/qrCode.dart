import 'dart:ffi';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class QrCode extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  CameraController controller;

  Future<void> initializeCamera() async {
    var camera = await availableCameras();
    controller = CameraController(camera[0], ResolutionPreset.medium);
    await controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<File> takepicture() async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = '${root.path}/Guided_camera';
    await Directory(directoryPath).create(recursive: true);
    String filePath = '$directoryPath/${DateTime.now()}.jpg';

    try {
      await controller.takePicture(filePath);
    } catch (e) {
      return null;
    }
    return File(filePath);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
            future: initializeCamera(),
            builder: (_, snapshot) =>
                (snapshot.connectionState == ConnectionState.done)
                    ? Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width /
                                    controller.value.aspectRatio,
                                child: CameraPreview(controller),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width /
                                    controller.value.aspectRatio,
                                // child: CameraPreview(controller),
                                child: Image.asset(
                                  'images/qrbackground.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(top: 30),
                                child: RaisedButton(
                                  onPressed: () {},
                                  shape: CircleBorder(),
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),
                        ),
                      )),
      ),
    );
  }
}
