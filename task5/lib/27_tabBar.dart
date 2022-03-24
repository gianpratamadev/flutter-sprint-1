import 'package:flutter/material.dart';

class TabBarTest extends StatelessWidget {
  // const TabBarTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Video 27 - TabBar'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.comment), text: 'Comments'),
                Tab(
                  child: Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/260/260236.png'),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(text: 'News')
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Text 1'),
              ),
              Center(
                child: Text('Text 2'),
              ),
              Center(
                child: Text('Text 3'),
              ),
              Center(
                child: Text('Text 4'),
              ),
            ],
          ),
        ));
  }
}
