import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedHeaderPicWidget.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedBackButtonWidget5.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

class GeneratedHeaderPartWidget extends StatelessWidget {
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
                double percentWidth = 1.0;
                double scaleX = (constraints.maxWidth * percentWidth) / 333.0;

                double percentHeight = 0.92;
                double scaleY = (constraints.maxHeight * percentHeight) /
                    252.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: 7,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedHeaderPicWidget())
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
                final double width = constraints.maxWidth * 0.1000960960960961;

                final double height =
                    constraints.maxHeight * 0.1269841192951433;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 7,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedBackButtonWidget5(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
