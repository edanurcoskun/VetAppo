import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedPasswordWidget3 extends StatefulWidget {
  @override
  _GeneratedPasswordWidget3 createState() => _GeneratedPasswordWidget3();
}

class _GeneratedPasswordWidget3 extends State<GeneratedPasswordWidget3> {
  bool _isObscure = true;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
          Container(
              color: Color.fromARGB(170, 19, 125, 185),
              padding: EdgeInsets.fromLTRB(7, 3, 0, 0),
              child: Text('''Password''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 22.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ))),
          Container(
              padding: EdgeInsets.only(top: 30.0),
              child: TextField(
                controller: myController,
                textCapitalization: TextCapitalization.words,
                onChanged: (text) {
                  createPassword(myController.text);
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.deny(" "),
                ],
                textInputAction: TextInputAction.go,
                keyboardType: TextInputType.text,
                obscureText: _isObscure,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                ),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[800],
                ),
              ))
        ]));
  }
}
