import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedGestures extends StatefulWidget {
  const AnimatedGestures({Key? key}) : super(key: key);

  @override
  State<AnimatedGestures> createState() => _AnimatedGesturesState();
}

class _AnimatedGesturesState extends State<AnimatedGestures> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 10 - Animated & Gestures'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            color: Color.fromARGB(
              255,
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            ),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
