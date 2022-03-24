import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '92_getX_mainPage2.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      child: Text('Login'),
      onPressed: () {
        //Menggunakan non route
        Get.offNamed('/main');
      },
    )));
  }
}
