import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/generated/GeneratedTodaysWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/generated/GeneratedNextWidget2.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/generated/GeneratedSettingsButtonWidget1.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/generated/GeneratedExitButtonWidget1.dart';

class GeneratedAppoPageWidget extends StatelessWidget {
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
                      top: data.size.height / 1.80044776119403,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 2.534404255319149,
                      child: GeneratedNextWidget2(),
                    ),
                    Positioned(
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 7.807123287671233,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.142857142857143,
                      height: data.size.height / 2.534404255319149,
                      child: GeneratedTodaysWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 1.368821292775665,
                      top: data.size.height / 18.10571428571429,
                      right: null,
                      bottom: null,
                      width: 34,
                      height: 34,
                      child: GeneratedSettingsButtonWidget1(),
                    ),
                    Positioned(
                      left: data.size.width / 1.2,
                      top: data.size.height / 18.10571428571429,
                      right: null,
                      bottom: null,
                      width: 34,
                      height: 34,
                      child: GeneratedExitButtonWidget1(),
                    )
                  ]),
            ),
          )))),
    );
  }
}
