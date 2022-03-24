import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '43_multiProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Wrap dengan ChangeNotifierProvider
      home: BuyOut(),
    );
  }
}

// VIDEO 42 - 
// class MyApp extends StatelessWidget {
//   // const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // Wrap dengan ChangeNotifierProvider
//       home: ChangeNotifierProvider<SharedStateTest>(
//         create: (context) => SharedStateTest(),
//         child: SwitchColor(),
//       ),
//     );
//   }
// }
