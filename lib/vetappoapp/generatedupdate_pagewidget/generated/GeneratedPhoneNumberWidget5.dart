import 'package:flutter/material.dart';
import 'package:flutterapp/models/User.dart';

class GeneratedPhoneNumberWidget5 extends StatefulWidget {
  @override
  _GeneratedPhoneNumberWidget5 createState() => _GeneratedPhoneNumberWidget5();
}

class _GeneratedPhoneNumberWidget5 extends State<GeneratedPhoneNumberWidget5> {
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
                        child: Text('''Phone Number''',
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
                            createPhoneNumber(myController.text);
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            filled: true,
                            hintText: "*" + snapshot.data["phoneNumber"].toString() + "*",
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
