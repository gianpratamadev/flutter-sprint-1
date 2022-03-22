import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '92_getX_loginPage2.dart';
// import '92_getX_mainPage2.dart';
// import '92_getX_secondPage2.dart';
import '21_mediaQuery.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       getPages: [
//         GetPage(name: '/', page: () => LoginPage()),
//         GetPage(name: '/main', page: () => MainPage()),
//         GetPage(
//             name: '/second',
//             page: () => SecondPage(),
//             transition: Transition.zoom),
//       ],
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryTest(),
    );
  }
}
