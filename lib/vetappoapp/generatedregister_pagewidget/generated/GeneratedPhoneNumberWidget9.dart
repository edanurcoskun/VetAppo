import 'package:flutter/material.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedPhoneNumberWidget9 extends StatefulWidget {
  @override
  _GeneratedPhoneNumberWidget9 createState() => _GeneratedPhoneNumberWidget9();
}

class _GeneratedPhoneNumberWidget9 extends State<GeneratedPhoneNumberWidget9> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: myController,
      onChanged: (text) {
        createPhoneNumber(myController.text);
      },
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        fillColor: Color.fromARGB(150, 255, 255, 255),
        filled: true,
        prefixIcon: Icon(
          Icons.blur_circular_outlined,
          size: 15.0,
          color: Color.fromARGB(255, 20, 126, 185),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        hintText: 'Phone Number',
        hintStyle: new TextStyle(
            fontSize: 20.0, color: Color.fromARGB(255, 20, 126, 185)),
      ),
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.black,
      ),
    ));
  }
}
