import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  //const FlexWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Video 11. Flexible Widget'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.lightGreen,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 73, 116, 24),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.lime,
                        ),
                      ),
                    ],
                  )),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.redAccent,
                margin: EdgeInsets.all(5),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.amber,
                margin: EdgeInsets.all(5),
              ),
            ),
          ],
        ));
  }
}
