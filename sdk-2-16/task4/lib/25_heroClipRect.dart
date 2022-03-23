import 'package:flutter/material.dart';

import '25_secondPage.dart';

class HeroClipRect extends StatelessWidget {
  const HeroClipRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Video 25 - Hero, ClipRRect',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'tagSaya',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.pexels.com/photos/4119140/pexels-photo-4119140.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
