import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/svg/svg.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedOldAppointmentsWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

class GeneratedNewAppoHeaderWidget extends StatelessWidget {
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
                double percentWidth = 0.49919219018151156;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 159.99609375;

                double percentHeight = 0.13333333333333333;
                double scaleY = (constraints.maxHeight * percentHeight) / 4.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: constraints.maxHeight * 1.0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: Container(
                        child: SvgWidget(painters: [
                          SvgPathPainter.stroke(
                            4.0,
                            strokeJoin: StrokeJoin.miter,
                          )
                            ..addPath('M0 0L159.996 0L159.996 -4L0 -4L0 0Z')
                            ..color = Color.fromARGB(255, 20, 126, 185),
                        ]),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 25.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.4912506312799501;

                final double height =
                    constraints.maxHeight * 0.7983739852905274;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5149894234424048,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedOldAppointmentsWidget(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 15.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.49125067888778945;

                final double height =
                    constraints.maxHeight * 0.7983739852905274;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.012637777682244713,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: Text(
                          '''new appointment''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 18.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
