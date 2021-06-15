import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/generated/GeneratedGenderWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/generated/GeneratedWhichGenderWidget.dart';

class GeneratedGenderPartWidget extends StatelessWidget {
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
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.5531197301854974;

                final double height =
                    constraints.maxHeight * 0.37681159420289856;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.22596964586846544,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedGenderWidget(),
                      ))
                ]);
              }),
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
                final double width = constraints.maxWidth * 1.4451939291736931;

                final double height =
                    constraints.maxHeight * 0.37681159420289856;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: constraints.maxHeight * 0.6231884057971014,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedWhichGenderWidget(),
                      ))
                ]);
              }),
            ),
          ]),
    );
  }
}
