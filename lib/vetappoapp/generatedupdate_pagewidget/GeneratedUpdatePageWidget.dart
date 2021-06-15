import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'generated/GeneratedBackButtonWidget3.dart';
import 'generated/GeneratedNameWidget7.dart';
import 'generated/GeneratedPasswordWidget3.dart';
import 'generated/GeneratedPhoneNumberWidget5.dart';
import 'generated/GeneratedSurnameWidget3.dart';
import 'generated/GeneratedUpdateButtonWidget1.dart';
import 'generated/GeneratedUsernameWidget3.dart';

class GeneratedUpdatePageWidget extends StatelessWidget {
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
                      left: data.size.width / 3.272727272727273,
                      top: data.size.height / 1.125374045801527,
                      right: null,
                      bottom: null,
                      width: 142,
                      height: 40,
                      child: GeneratedUpdateButtonWidget1(),
                    ),
                    Positioned(
                      left: data.size.width / 12,
                      top: data.size.height / 1.420829039812646,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 7.511688311688312,
                      child: GeneratedPasswordWidget3(),
                    ),
                    Positioned(
                      left: data.size.width / 12,
                      top: data.size.height / 1.775905604719764,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 7.511688311688312,
                      child: GeneratedPhoneNumberWidget5(),
                    ),
                    Positioned(
                      left: data.size.width / 12,
                      top: data.size.height / 2.370800796812749,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 7.511688311688312,
                      child: GeneratedUsernameWidget3(),
                    ),
                    Positioned(
                      left: data.size.width / 12,
                      top: data.size.height / 3.56938036809816,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 7.511688311688312,
                      child: GeneratedSurnameWidget3(),
                    ),
                    Positioned(
                      left: data.size.width / 12,
                      top: data.size.height / 7.233333333333333,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 7.511688311688312,
                      child: GeneratedNameWidget7(),
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
                                child: GeneratedBackButtonWidget3(),
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
