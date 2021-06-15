import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedWhichGenderWidget extends StatefulWidget {
  @override
  _GeneratedWhichGenderWidget createState() => _GeneratedWhichGenderWidget();
}

class _GeneratedWhichGenderWidget extends State<GeneratedWhichGenderWidget> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Radio(
            value: 1,
            groupValue: selectedValue,
            activeColor: Colors.blue,
            onChanged: (value) {
              setState(() => selectedValue = 1);
              createPetGender("Male");
            }),
        new Container(
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 47, 54, 54),
            ),
          ),
          child: Text(
            '''male''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.111875,
              fontSize: 27.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        new Radio(
            value: 2,
            groupValue: selectedValue,
            activeColor: Colors.pink,
            onChanged: (value) {
              setState(() => selectedValue = 2);
              createPetGender("Female");
            }),
        new Container(
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 47, 54, 54),
            ),
          ),
          child: Text(
            '''female''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.111875,
              fontSize: 27.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}