import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedPhoneNumberWidget extends StatefulWidget {
  @override
  _GeneratedPhoneNumberWidget createState() => _GeneratedPhoneNumberWidget();
}

class _GeneratedPhoneNumberWidget extends State<GeneratedPhoneNumberWidget> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
          Text(
            '''Phone Number :''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.171875,
              fontSize: 22.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25.0),
              child: TextField(
                controller: myController,
                onChanged: (text) {
                  createAnotherPhone(myController.text);
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(150, 255, 255, 255),
                  filled: true,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                ),
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ))
        ]));
  }
}
