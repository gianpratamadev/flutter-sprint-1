import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  // const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 02 - Hello World'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
