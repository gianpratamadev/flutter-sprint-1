import 'dart:math';

import 'package:flutter/material.dart';

class StackAndAlign extends StatelessWidget {
  // const StackAndAlign({ Key? key }) : super(key: key);
  List<Widget> konten = [];

  Random random = Random();

  //Constructor
  StackAndAlign() {
    for (int i = 0; i <= 35; i++) {
      // int number = 546819 + random.nextInt(5);

      konten.add(
        Container(
            width: 260,
            margin: EdgeInsets.symmetric(
              horizontal: 80,
              vertical: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent),
            child: Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
            )),
      );
      konten.add(
        Row(
          children: [
            Spacer(flex: 2),
            Container(width: 80, height: 20, color: Colors.redAccent),
            Spacer(flex: 1),
            Container(width: 80, height: 20, color: Colors.orange),
            Spacer(flex: 1),
            Container(width: 80, height: 20, color: Colors.blueAccent),
            Spacer(flex: 2),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Video 12 - Stack & Align'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //listview
            ListView(children: [
              Column(
                children: konten,
              )
            ]),
            Align(
              alignment: Alignment(0.8, 0.9),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 46),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
