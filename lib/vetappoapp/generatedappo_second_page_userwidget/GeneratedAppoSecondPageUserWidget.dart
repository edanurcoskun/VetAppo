import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/generated/GeneratedAgeWidget1.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/generated/GeneratedNextButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/generated/GeneratedGenderPartWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/generated/GeneratedBackButtonWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'generated/GeneratedNameWidget1.dart';

class GeneratedAppoSecondPageUserWidget extends StatelessWidget {
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
                      left: data.size.width / 18,
                      top: data.size.height / 7.387905604719764,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.125,
                      height: data.size.height / 6.06122448979592,
                      child: GeneratedNameWidget1(),
                    ),
                    Positioned(
                      left: data.size.width / 11.25,
                      top: data.size.height / 2.723076923076923,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.214165261382799,
                      height: data.size.height / 4.63768115942029,
                      child: GeneratedGenderPartWidget(),
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
                                child: GeneratedBackButtonWidget(),
                              ))
                        ]);
                      }),
                    ),
                    Positioned(
                      left: data.size.width / 18,
                      top: data.size.height / 1.487905604719764,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.125,
                      height: data.size.height / 6.06122448979592,
                      child: GeneratedAgeWidget1(),
                    ),
                    Positioned(
                      left: data.size.width / 1.344262948207171,
                      top: data.size.height / 1.207547169811321,
                      right: null,
                      bottom: null,
                      width: 70.0,
                      height: 43.0,
                      child: GeneratedNextButtonWidget(),
                    )
                  ]),
            ),
          )))),
    );
  }
}
