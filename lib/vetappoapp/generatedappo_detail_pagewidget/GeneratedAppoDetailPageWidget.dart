import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/vetappoapp/generatedappo_detail_pagewidget/generated/GeneratedBackButtonWidget4.dart';
import 'package:flutterapp/vetappoapp/generatedappo_detail_pagewidget/generated/GeneratedOldAppoWidget.dart';

import 'generated/GeneratedDetailAppoWidget.dart';

class GeneratedAppoDetailPageWidget extends StatelessWidget {
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
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 7.807123287671233,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 2.534404255319149,
                      child: GeneratedDetailAppoWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 1.80044776119403,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 2.534404255319149,
                      child: GeneratedOldAppoWidget(),
                    ),
                    Positioned(
                      left: 0.0,
                      top: data.size.height / 42.66666666666667,
                      right: 0.0,
                      bottom: 0.0,
                      width: null,
                      height: null,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Stack(children: [
                          TransformHelper.translate(
                              x: constraints.maxWidth * 0.03888888888888889,
                              y: constraints.maxHeight * 0.0421875,
                              z: 0,
                              child: Container(
                                width: 34,
                                height: 34,
                                child: GeneratedBackButtonWidget4(),
                              ))
                        ]);
                      }),
                    )
                  ]),
            ),
          )))),
    );
  }
}
