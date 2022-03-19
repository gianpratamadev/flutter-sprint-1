import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 04 - Latihan Row Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Text 1'),
          Text('Text 2'),
          Text('Text 3'),
          Row(
            children: [
              Text('Text 4'),
              Text('Text 5'),
              Text('Text 6'),
            ],
          )
        ],
      ),
    );
  }
}
