import 'package:flutter/material.dart';
import 'package:pentesthub/ui/upload/upload.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UploadPage(),
    );
  }
}
