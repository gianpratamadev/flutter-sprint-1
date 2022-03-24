import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Video 25 - Hero, ClipRRect',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'tagSaya',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(250),
            child: Container(
              width: 250,
              height: 250,
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
