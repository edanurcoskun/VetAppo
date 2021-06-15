import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

class GeneratedGenderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.translate(
        x: 0,
        y: -1.0,
        z: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 47, 54, 54),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(38, 14, 0, 0),
              child: Text(
                '''GENDER''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.001875,
                  fontSize: 25.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 47, 54, 54),
                ),
              ),
              color: Color.fromARGB(178, 255, 255, 255),
            ),
          ),
        ));
  }
}
