import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedAnotherPetWidget1 extends StatefulWidget {
  @override
  _GeneratedAnotherPetWidget1 createState() => _GeneratedAnotherPetWidget1();
}

class _GeneratedAnotherPetWidget1 extends State<GeneratedAnotherPetWidget1> {
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
                return "Choose or enter a pet type";
              } else {
                return null;
              }
            },
            onFieldSubmitted: (enteredText) {
              _formKey.currentState.validate();
            },
            onChanged: (text) {
              createPetType(myController.text);
            },
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.go,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Color.fromARGB(150, 255, 255, 255),
              filled: true,
              hintText: 'Enter different type',
              contentPadding: EdgeInsets.fromLTRB(15, 4, 7, 0),
            ),
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            ),
          )
        ]));
  }
}
