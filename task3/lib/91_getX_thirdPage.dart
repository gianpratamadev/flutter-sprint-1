import '91_getX_mainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetX Third Page')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text('Go to Home'),
                  onPressed: () {
                    Get.offAll(MainPage());
                  }),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Back'),
                  onPressed: () {
                    Get.back(result: 'Ini adalah result dari page 3');
                  }),
            ],
          ),
        ));
  }
}
