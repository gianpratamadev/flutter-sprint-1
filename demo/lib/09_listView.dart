import 'package:flutter/material.dart';

class ListViewTest extends StatefulWidget {
  const ListViewTest({Key? key}) : super(key: key);

  @override
  State<ListViewTest> createState() => _ListViewTestState();
}

class _ListViewTestState extends State<ListViewTest> {
  List<Widget> widgets = [];

  // Constructor
  // _ListViewTestState() {
  //   for (int i = 0; i < 32; i++) {
  //     widgets.add(
  //       Text(
  //         'Data ke-$i',
  //         style: TextStyle(fontSize: 24),
  //       ),
  //     );
  //   }
  //   ;
  // }

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 06 - Stateful Widget'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text('Data ke-$counter',
                          style: TextStyle(fontSize: 28)));
                      counter++;
                    });
                  },
                  child: Text('Tambah Data'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: Text('Hapus Data'),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
