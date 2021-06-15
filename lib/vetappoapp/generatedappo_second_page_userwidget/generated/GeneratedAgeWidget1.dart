import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedAgeWidget1 extends StatefulWidget {
  @override
  _GeneratedAgeWidget1 createState() => _GeneratedAgeWidget1();
}

class _GeneratedAgeWidget1 extends State<GeneratedAgeWidget1> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(children: <Widget>[
          TextFormField(
            controller: myController,
            validator: (enteredText) {
              if (enteredText.isEmpty) {
                return "Age field cannot be empty!";
              } else {
                return null;
              }
            },
            onFieldSubmitted: (enteredText) {
              _formKey.currentState.validate();
            },
            onChanged: (text) {
              createPetAge(myController.text);
            },
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.go,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Color.fromARGB(150, 255, 255, 255),
              filled: true,
              prefixIcon: Icon(
                Icons.help_outline,
                size: 30.0,
                color: Color.fromARGB(255, 20, 126, 185),
              ),
              hintText: 'Age of the pet',
              contentPadding: EdgeInsets.fromLTRB(15, 13, 7, 0),
            ),
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            ),
          )
        ]));
  }
}
