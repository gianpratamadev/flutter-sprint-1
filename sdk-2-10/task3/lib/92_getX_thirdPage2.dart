import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '92_getX_mainPage2.dart';

class ThirdPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetX Third Page 2 with Route')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text('Go to GetX Home w/Route'),
                  onPressed: () {
                    Get.offAllNamed('/main');
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
