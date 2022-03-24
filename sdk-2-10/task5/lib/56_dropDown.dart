import 'package:flutter/material.dart';

class DropDownTest extends StatefulWidget {
  // const DropDownTest({Key? key}) : super(key: key);

  @override
  State<DropDownTest> createState() => _DropDownTestState();
}

class _DropDownTestState extends State<DropDownTest> {
  Person selectedPerson;

  List<Person> dataPerson = [
    Person('Jogo'),
    Person('Jaya'),
    Person('Jajo'),
  ];

  List<DropdownMenuItem> generateItems(List<Person> dataPerson) {
    List<DropdownMenuItem> items = [];

    for (var item in dataPerson) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Video 56 - DropDown'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: DropdownButton(
                isExpanded: true,
                style: TextStyle(color: Colors.blue, fontSize: 18),
                value: selectedPerson,
                items: generateItems(dataPerson),
                onChanged: (item) {
                  setState(() {
                    selectedPerson = item;
                  });
                },
              ),
            ),
            Text(
                (selectedPerson != null)
                    ? selectedPerson.name
                    : 'Belum ada nama yang terpilih',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          ],
        ));
  }
}

//class baru
class Person {
  String name;

  Person(this.name);
}
