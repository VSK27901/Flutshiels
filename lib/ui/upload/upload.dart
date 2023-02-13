import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pentesthub/ui/loading/loading1.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  bool uploadSuccess = false;
  bool show = false;
  void picker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path ?? "");
      setState(() {
        uploadSuccess = true;
        show = true;
      });
      Timer(Duration(seconds: 2), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (con) => Loading()));
      });
    } else {
      setState(() {
        uploadSuccess = false;
        show = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.blue])),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Upload APK",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            IconButton(
              onPressed: picker,
              icon: Icon(
                Icons.upload,
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(height: 30),
            show
                ? uploadSuccess
                    ? Text("Upload Success",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ))
                    : Text(
                        "Error on uploading",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                : Container(),
          ],
        ),
      ),
    );
  }
}
