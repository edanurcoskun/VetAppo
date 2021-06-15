import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedUsernameWidget7 extends StatefulWidget {
  @override
  _GeneratedUsernameWidget7 createState() => _GeneratedUsernameWidget7();
}

class _GeneratedUsernameWidget7 extends State<GeneratedUsernameWidget7> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: myController,      
      onChanged: (text) {
        createUsername(myController.text);
      },
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.deny(" "),
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
        hintText: 'Username',
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
