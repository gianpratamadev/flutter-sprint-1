import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class SwitchColor extends StatelessWidget {
  //const SwitchColor({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Consumer<SharedStateTest>(
            builder: (context, appColor, _) => Text('Video 42 - Provider',
                style: TextStyle(color: appColor.color))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SharedStateTest>(
              builder: (context, appColor, _) => AnimatedContainer(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                color: appColor.color,
                duration: Duration(milliseconds: 350),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('AM'),
                Consumer<SharedStateTest>(
                    builder: (context, appColor, _) => Switch(
                        value: appColor.isLightBlue,
                        onChanged: (newValue) {
                          appColor.isLightBlue = newValue;
                        })),
                Text('LB')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SharedStateTest with ChangeNotifier {
  bool _isLightBlue = true;

  //Getter switch button, apakah on / off
  bool get isLightBlue => _isLightBlue;

  //Setter
  set isLightBlue(bool value) {
    _isLightBlue = value;

    // perintah yang akan memberitahukan Consumer
    notifyListeners();
  }

  //Getter & Setter untuk return warna
  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
