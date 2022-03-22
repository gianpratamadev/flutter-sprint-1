import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '91_getX_secondPage.dart';

class MainPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetX Main Page')),
        body: Center(
          child: ElevatedButton(
              child: Text('Go to Second Page'),
              onPressed: () {
                Get.to(SecondPage());
              }),
        ));
  }
}
