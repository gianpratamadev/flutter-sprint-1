import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  const AnonymousMethod({Key? key}) : super(key: key);

  @override
  State<AnonymousMethod> createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = 'Ini adalah text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 07 - Anonymous Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = 'Tombol sudah ditekan';
                  });
                },
                child: Text('Tekan disini')),
          ],
        ),
      ),
    );
  }
}
