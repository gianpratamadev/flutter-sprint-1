import 'package:flutter/material.dart';
import '91_getX_thirdPage.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetX Second Pages')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text('Go to Third Page'),
                  onPressed: () async {
                    String result = await Get.to<String>(ThirdPage());
                    print('====> $result');
                  }),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Back'),
                  onPressed: () {
                    Get.back();
                  }),
            ],
          ),
        ));
  }
}
