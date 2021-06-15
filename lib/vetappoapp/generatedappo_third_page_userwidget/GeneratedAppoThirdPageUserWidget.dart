import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedWithAnotherPersonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedBackButtonWidget1.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedSaveButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedDateWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedNameWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedHourWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedAddNoteWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/generated/GeneratedPhoneNumberWidget.dart';

class GeneratedAppoThirdPageUserWidget extends StatelessWidget {
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
                      left: 0.0,
                      top: data.size.height / 42.66666666666667,
                      right: 0.0,
                      bottom: 0.0,
                      width: null,
                      height: null,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        final double width =
                            constraints.maxWidth * 0.08888888888888889;

                        final double height = constraints.maxHeight * 0.05;

                        return Stack(children: [
                          TransformHelper.translate(
                              x: constraints.maxWidth * 0.03888888888888889,
                              y: constraints.maxHeight * 0.0421875,
                              z: 0,
                              child: Container(
                                width: width,
                                height: height,
                                child: GeneratedBackButtonWidget1(),
                              ))
                        ]);
                      }),
                    ),
                    Positioned(
                      left: data.size.width / 2.6,
                      top: 0.0,
                      right: 0.0,
                      bottom: 0.0,
                      width: null,
                      height: null,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        final double width =
                            constraints.maxWidth * 0.44166666666666667;

                        final double height = constraints.maxHeight * 0.071875;

                        return Stack(children: [
                          TransformHelper.translate(
                              x: 0,
                              y: constraints.maxHeight * 0.8671875,
                              z: 0,
                              child: Container(
                                width: width,
                                height: height,
                                child: GeneratedSaveButtonWidget(),
                              ))
                        ]);
                      }),
                    ),
                    Positioned(
                      left: data.size.width / 5.538461538461538,
                      top: data.size.height / 9.411764705882353,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.309090909090909,
                      height: data.size.height / 10.22857142857143,
                      child: GeneratedDateWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 15,
                      top: data.size.height / 2.776744186046512,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.138526645768025,
                      height: data.size.height / 8.546153846153846,
                      child: GeneratedNameWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 15,
                      top: data.size.height / 2.016896551724138,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.138526645768025,
                      height: data.size.height / 8.546153846153846,
                      child: GeneratedPhoneNumberWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 5.538461538461538,
                      top: data.size.height / 5.165217391304348,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.309090909090909,
                      height: data.size.height / 10.22857142857143,
                      child: GeneratedHourWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 15,
                      top: data.size.height / 1.60972972972973,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.138526645768025,
                      height: data.size.height / 4.22857142857143,
                      child: GeneratedAddNoteWidget(),
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
                        final double width =
                            constraints.maxWidth * 0.7555555555555555;

                        final double height = constraints.maxHeight * 0.05;

                        return Stack(children: [
                          TransformHelper.translate(
                              x: constraints.maxWidth * 0.06666666666666667,
                              y: constraints.maxHeight * 0.31,
                              z: 0,
                              child: Container(
                                width: width,
                                height: height,
                                child: GeneratedWithAnotherPersonWidget(),
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
