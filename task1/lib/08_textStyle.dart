import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 08 - TextStyle'),
      ),
      body: Center(
        child: Text(
          'KodingWorks, 2022',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Apija',
            fontSize: 28,
            decoration: TextDecoration.overline,
            decorationColor: Colors.blue,
            decorationThickness: 5,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
      ),
    );
  }
}
