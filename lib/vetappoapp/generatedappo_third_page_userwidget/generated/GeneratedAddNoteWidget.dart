import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedAddNoteWidget extends StatefulWidget {
  @override
  _GeneratedAddNoteWidget createState() => _GeneratedAddNoteWidget();
}

class _GeneratedAddNoteWidget extends State<GeneratedAddNoteWidget> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
          Text(
            '''Add Note?''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.171875,
              fontSize: 23.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 20, 125, 184),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25.0),
              child: TextField(
                controller: myController,
                textCapitalization: TextCapitalization.sentences,
                onChanged: (text) {
                  createNote(myController.text);
                },
                textInputAction: TextInputAction.go,
                keyboardType: TextInputType.text,
                minLines: 4,
                maxLines: 4,
                maxLength: 300,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(150, 255, 255, 255),
                  filled: true,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                ),
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ))
        ]));
  }
}
