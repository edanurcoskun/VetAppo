import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedHourWidget2 extends StatefulWidget {
  @override
  _GeneratedHourWidget2 createState() => _GeneratedHourWidget2();
}

class _GeneratedHourWidget2 extends State<GeneratedHourWidget2> {
  DateTime pickedTime = DateTime.now();
  String selected;
  @override
  Widget build(BuildContext context) {
    List<String> doubleList = List<String>.generate(
        9,
        (int index) =>
            '${(index + 9.0).toString().padLeft(4, '0').padRight(5, '0')}');
    List<DropdownMenuItem> menuItemList = doubleList
        .map((val) => DropdownMenuItem(value: val, child: Text(val)))
        .toList();
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
              value: selected,
              hint: Text(
                "____ - ____",
                style: TextStyle(
                  height: 0.75,
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              onChanged: (val) {
                setState(() => selected = val);
                var splited = selected.split(".");
                createAppoHour(splited[0]);
              },
              items: menuItemList,
              icon: Icon(Icons.access_time),
              iconSize: 28,
              dropdownColor: Color.fromARGB(255, 191, 226, 226),
              style: TextStyle(
                height: 0.75,
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
