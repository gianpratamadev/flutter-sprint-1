import 'package:flutter/material.dart';

class DraggableTest extends StatefulWidget {
  // const DraggableTest({ Key? key }) : super(key: key);

  @override
  State<DraggableTest> createState() => _DraggableState();
}

class _DraggableState extends State<DraggableTest> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.grey;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 15 - Draggable'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.8),
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.8),
                    shape: StadiumBorder(),
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidates, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 200,
                      height: 200,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                      ),
                    )
                  : SizedBox(
                      width: 200,
                      height: 200,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
