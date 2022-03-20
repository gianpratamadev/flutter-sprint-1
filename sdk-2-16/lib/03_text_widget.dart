import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 03 - Text Widget'),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          width: 150,
          height: 100,
          child:
              Text('Saya sedang melatih kemampuan Flutter saya di HSI Sandbox',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  softWrap: false,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  )),
        ),
      ),
    );
  }
}
