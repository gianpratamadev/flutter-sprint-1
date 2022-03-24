import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontTest extends StatelessWidget {
  // const TabBarTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color fontColor = Color(0xFFFFB401);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 75, 104),
      appBar: AppBar(
        title: Text('Video 73 - Google Fonts'),
        backgroundColor: Color.fromARGB(255, 41, 57, 75),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'I\'ll keep learning Flutter',
              style: TextStyle(color: fontColor, fontSize: 25),
            ),
            Text(
              'Keep spirit, guys!',
              style: TextStyle(color: fontColor, fontSize: 25),
            ),
            Text(
              'Why I am different?',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.green, fontSize: 25),
              // style: TextStyle(color: fontColor, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
