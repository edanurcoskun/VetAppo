import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedNameWidget11 extends StatefulWidget {
  @override
  _GeneratedNameWidget11 createState() => _GeneratedNameWidget11();
}

class _GeneratedNameWidget11 extends State<GeneratedNameWidget11> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: myController,
      textCapitalization: TextCapitalization.words,
      onChanged: (text) {
        createName(myController.text);
        resetIsExist();
      },
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.deny(RegExp("[0-9]")),
      ],
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        fillColor: Color.fromARGB(150, 255, 255, 255),
        filled: true,
        prefixIcon: Icon(
          Icons.blur_circular_outlined,
          size: 15.0,
          color: Color.fromARGB(255, 20, 126, 185),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        hintText: 'Name',
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
