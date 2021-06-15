import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedPasswordWidget7 extends StatefulWidget {
  @override
  _GeneratedPasswordWidget7 createState() => _GeneratedPasswordWidget7();
}

class _GeneratedPasswordWidget7 extends State<GeneratedPasswordWidget7> {
  bool _isObscure = true;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: myController,
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
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            }),
        prefixIcon: Icon(
          Icons.blur_circular_outlined,
          size: 15.0,
          color: Color.fromARGB(255, 20, 126, 185),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        hintText: 'Password',
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
