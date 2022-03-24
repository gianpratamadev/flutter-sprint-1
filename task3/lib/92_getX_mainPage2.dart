import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '92_getX_secondPage2.dart';

class MainPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetX Main Page with Route')),
        body: Center(
          child: ElevatedButton(
              child: Text('Go to Second Page w/ Route'),
              onPressed: () {
                Get.toNamed('/second?name=Gian Pratama&from=dari Palembang.',
                    arguments: ['Nama', 'Saya']);
              }),
        ));
  }
}
