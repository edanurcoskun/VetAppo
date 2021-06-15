import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedPasswordWidget10 extends StatefulWidget {
  @override
  _GeneratedPasswordWidget10 createState() => _GeneratedPasswordWidget10();
}

class _GeneratedPasswordWidget10 extends State<GeneratedPasswordWidget10> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  bool _isObscure = true;
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
                  return "Password field cannot be empty!";
                } else {
                  return null;
                }
              },
              onFieldSubmitted: (enteredText) {
                _formKey.currentState.validate();
              },
              onChanged: (text) {
                createPassword(myController.text);
              },
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.deny(" "),
              ],
              textInputAction: TextInputAction.go,
              obscureText: _isObscure,
              obscuringCharacter: '*',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(150, 255, 255, 255),
                filled: true,
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 30.0,
                  color: Color.fromARGB(255, 20, 126, 185),
                ),
                contentPadding: EdgeInsets.fromLTRB(20, 13, 0, 0),
                hintText: 'Password',
                hintStyle: new TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 20, 126, 185)),
              ),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            )
          ]),
    );
  }
}
