import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLifeCycleState extends StatefulWidget {
  // const AppLifeCycleState({Key? key}) : super(key: key);

  @override
  State<AppLifeCycleState> createState() => _AppLifeCycleStateState();
}

class _AppLifeCycleStateState extends State<AppLifeCycleState>
    with WidgetsBindingObserver {
  //initstate
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  // dispose
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive) {
      print('====> INACTIVE <====');
    }

    if (state == AppLifecycleState.paused) {
      print('====> PAUSED <====');
    }

    if (state == AppLifecycleState.resumed) {
      print('====> RESUMED <====');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video 82 - App Life Cycle State'),
      ),
      body: Center(
          child: Container(
        child: Text('Ini adalah keadaan Resumed.'),
      )),
    );
  }
}
