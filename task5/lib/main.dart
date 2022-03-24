import 'package:google_fonts/google_fonts.dart';

import '73_googleFonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.srirachaTextTheme()
            .copyWith(bodyText1: GoogleFonts.modak()),
      ),
      debugShowCheckedModeBanner: false,
      home: GoogleFontTest(),
    );
  }
}
