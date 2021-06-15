import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedUsernameWidget10 extends StatefulWidget {
  @override
  _GeneratedUsernameWidget10 createState() => _GeneratedUsernameWidget10();
}

class _GeneratedUsernameWidget10 extends State<GeneratedUsernameWidget10> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(
            children: <Widget>[
              TextFormField(
                controller: myController,
                validator: (enteredText) {
                  if (enteredText.isEmpty) {
                    return "Username field cannot be empty!";
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (enteredText) {
                  _formKey.currentState.validate();
                },
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
                    Icons.account_circle_sharp,
                    size: 30.0,
                    color: Color.fromARGB(255, 20, 126, 185),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 13, 0, 0),
                  hintText: 'Username',
                  hintStyle: new TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(255, 20, 126, 185)),
                ),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              
            ]));
  }
}
