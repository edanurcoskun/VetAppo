import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/generated/GeneratedActiveForUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/generated/GeneratedOldAppoHeaderWidget.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/generated/GeneratedOldsForUserWidget.dart';

class GeneratedOldAppoUserWidget extends StatelessWidget {
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
                        left: data.size.width / 30.36363636363636,
                        top: data.size.height / 1.90044776119403,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.062857142857143,
                        height: data.size.height / 2.634404255319149,
                        child: Container(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            child: GeneratedActiveForUserWidget(),
                          ),
                        )),
                    Positioned(
                        left: data.size.width / 30.36363636363636,
                        top: data.size.height / 4.807123287671233,
                        right: null,
                        bottom: null,
                        width: data.size.width / 1.062857142857143,
                        height: data.size.height / 3.234404255319149,
                        child: Container(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            child: GeneratedOldsForUserWidget(),
                          ),
                        )),
                    Positioned(
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 7.10126582278481,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.123244929797192,
                      height: data.size.height / 21.33333333333333,
                      child: GeneratedOldAppoHeaderWidget(),
                    )
                  ]),
            ),
          )))),
    );
  }
}
