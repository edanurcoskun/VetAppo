import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedDateWidget1.dart';

class GeneratedDateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0.0,
              top: 12.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: Text(
                '''Date : ''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.171875,
                  fontSize: 25.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.6691;

                final double height = constraints.maxHeight * 1.037037037037037;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.23510971786833856,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedDateWidget1(),
                      ))
                ]);
              }),
            ),
          ]),
    );
  }
}
