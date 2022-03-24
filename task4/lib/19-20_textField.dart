import 'package:flutter/material.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({Key? key}) : super(key: key);

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController passTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video 19 - TextField')),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                fillColor: Colors.lightBlue[50],
                filled: true,
                // prefixText: 'Password:',
                hintText: 'Isikan nama lengkap anda.',
                labelText: 'Nama Lengkap',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),

              // obscureText: true,
              onChanged: (nilai) {
                setState(() {});
              },
              controller: nameTextController,
            ),
            SizedBox(height: 35),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                fillColor: Colors.lightBlue[50],
                filled: true,
                // prefixText: 'Password:',
                hintText: 'Isikan kata sandi anda.',
                labelText: 'Password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              maxLength: 15,
              obscureText: true,
              onChanged: (nilai) {
                setState(() {});
              },
              controller: passTextController,
            ),
            SizedBox(height: 160),
            Text(nameTextController.text),
            Text(passTextController.text),
          ],
        ),
      ),
    );
  }
}
