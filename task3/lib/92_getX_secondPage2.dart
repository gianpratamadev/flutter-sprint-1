import 'package:flutter/material.dart';
import '92_getX_thirdPage2.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetX Second Pages with Route')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  children: (Get.arguments as List<String>)
                          .map((e) => Text(e))
                          .toList() +
                      [
                        Text(Get.parameters['name']),
                        Text(Get.parameters['from']),
                      ]),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Go to Third Page w/ Route'),
                  onPressed: () async {
                    String result = await Get.toNamed<String>('/third');
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
