import 'package:flutter/material.dart';
import 'package:demo/16_secondPage.dart';

class MainPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Main Page')),
        body: Center(
          child: ElevatedButton(
              child: Text('Go to Second Page'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              }),
        ));
  }
}
