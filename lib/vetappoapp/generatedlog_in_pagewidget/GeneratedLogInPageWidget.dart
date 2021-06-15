import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/generated/GeneratedLogButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/generated/GeneratedHeaderPicWidget1.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/generated/GeneratedCreateAnAccountWidget.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/generated/GeneratedPasswordWidget10.dart';
import 'generated/GeneratedUsernameWidget10.dart';

class GeneratedLogInPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 191, 226, 226),
            body: Material(
                child: SingleChildScrollView(
                    child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Container(
                width: data.size.width,
                height: data.size.height,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.zero,
                        child: Container(
                          color: Color.fromARGB(255, 191, 226, 226),
                        ),
                      ),
                      Positioned(
                        left: data.size.width / 9,
                        top: data.size.height / 1.14,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.276595744680851,
                        height: data.size.height / 21.33333333333333,
                        child: GeneratedCreateAnAccountWidget(),
                      ),
                      Positioned(
                        left: data.size.width / 3,
                        top: data.size.height / 1.303508771929825,
                        right: null,
                        bottom: null,
                        width: 122,
                        height: 40,
                        child: GeneratedLogButtonWidget(),
                      ),
                      Positioned(
                        left: data.size.width / 9,
                        top: data.size.height / 1.689484536082474,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.232876712328767,
                        height: data.size.height / 6.33333333333333,
                        child: GeneratedPasswordWidget10(),
                      ),
                      Positioned(
                        left: data.size.width / 9,
                        top: data.size.height / 2.2,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.232876712328767,
                        height: data.size.height / 6.33333333333333,
                        child: GeneratedUsernameWidget10(),
                      ),
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: 0.0,
                        bottom: 0.0,
                        width: null,
                        height: null,
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          double percentWidth = 0.925;
                          double scaleX =
                              (constraints.maxWidth * percentWidth) / 333.0;

                          double percentHeight = 0.3937500238418579;
                          double scaleY =
                              (constraints.maxHeight * percentHeight) /
                                  252.00001525878906;

                          return Stack(children: [
                            TransformHelper.translateAndScale(
                                translateX:
                                    constraints.maxWidth * 0.03888888888888889,
                                translateY: 34,
                                translateZ: 0,
                                scaleX: scaleX,
                                scaleY: scaleY,
                                scaleZ: 1,
                                child: GeneratedHeaderPicWidget1())
                          ]);
                        }),
                      )
                    ]),
              ),
            )))));
  }
}
