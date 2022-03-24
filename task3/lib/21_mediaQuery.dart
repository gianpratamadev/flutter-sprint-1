import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  //const MediaQueryTest({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 21 - Media Query'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
              // color: Colors.amber,
              // width: MediaQuery.of(context).size.width / 3,
              // height: MediaQuery.of(context).size.height / 2,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.redAccent,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.blueAccent,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.amber,
        ),
      ),
    ];
  }
}
