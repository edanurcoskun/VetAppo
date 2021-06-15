import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedSurnameWidget3 extends StatefulWidget {
  @override
  _GeneratedSurnameWidget3 createState() => _GeneratedSurnameWidget3();
}

class _GeneratedSurnameWidget3 extends State<GeneratedSurnameWidget3> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getUserData(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                    child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                ));
              }
              return Container(
                  child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                    Container(
                        color: Color.fromARGB(170, 19, 125, 185),
                        padding: EdgeInsets.fromLTRB(7, 3, 0, 0),
                        child: Text('''Surname''',
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
                            createSurname(myController.text);
                          },
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.deny(RegExp("[0-9]")),
                          ],
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            filled: true,
                            hintText: "*" + snapshot.data["surname"] + "*",
                          ),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[800],
                          ),
                        ))
                  ]));
            }));
  }
}
