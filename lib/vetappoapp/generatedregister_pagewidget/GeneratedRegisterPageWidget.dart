import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedNameWidget11.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedPasswordWidget7.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedPhoneNumberWidget9.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedSurnameWidget7.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedRegisterButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedHeaderPartWidget.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/generated/GeneratedUsernameWidget7.dart';

class GeneratedRegisterPageWidget extends StatelessWidget {
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
                        left: data.size.width / 25.71428571428571,
                        top: data.size.height / 23.7047037037037,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.081081081081081,
                        height: data.size.height / 2.32768253968254,
                        child: GeneratedHeaderPartWidget(),
                      ),
                      Positioned(
                        left: data.size.width / 30,
                        top: data.size.height / 2.105614035087719,
                        right: null,
                        bottom: null,
                        width: data.size.width / 2.230924855491329,
                        height: data.size.height / 12.33333333333333,
                        child: GeneratedNameWidget11(),
                      ),
                      Positioned(
                        left: data.size.width / 1.927213114754098,
                        top: data.size.height / 2.105614035087719,
                        right: null,
                        bottom: null,
                        width: data.size.width / 2.230924855491329,
                        height: data.size.height / 12.33333333333333,
                        child: GeneratedSurnameWidget7(),
                      ),
                      Positioned(
                        left: data.size.width / 30,
                        top: data.size.height / 1.756158357771261,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.070571428571429,
                        height: data.size.height / 12.33333333333333,
                        child: GeneratedUsernameWidget7(),
                      ),
                      Positioned(
                        left: data.size.width / 30,
                        top: data.size.height / 1.502090680100756,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.070571428571429,
                        height: data.size.height / 12.33333333333333,
                        child: GeneratedPhoneNumberWidget9(),
                      ),
                      Positioned(
                        left: data.size.width / 30,
                        top: data.size.height / 1.31280353200883,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.070571428571429,
                        height: data.size.height / 12.33333333333333,
                        child: GeneratedPasswordWidget7(),
                      ),
                      Positioned(
                        left: data.size.width / 3.272727272727273,
                        top: data.size.height / 1.121374045801527,
                        right: null,
                        bottom: null,
                        width: 142,
                        height: 40,
                        child: GeneratedRegisterButtonWidget(),
                      )
                    ]),
              ),
            )))));
  }
}
