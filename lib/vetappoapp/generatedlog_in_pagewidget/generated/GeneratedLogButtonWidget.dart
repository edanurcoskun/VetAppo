import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/models/User.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/GeneratedAppoFirstPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/GeneratedAppoPageWidget.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/GeneratedLogInPageWidget.dart';

class GeneratedLogButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getUserDocumentId();
        getUserData();
        String who = whoIs();
        if (who == "admin" || who == "user") {
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  animation = CurvedAnimation(
                      parent: animation, curve: Curves.linearToEaseOut);

                  return SizeTransition(
                    sizeFactor: animation,
                    child: child,
                  );
                },
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  if (who == "admin") {
                    return GeneratedAppoPageWidget();
                  } else if (who == "user") {
                    return GeneratedAppoFirstPageUserWidget();
                  }
                  return GeneratedLogInPageWidget();
                },
              ));
        } else if (who == "null") {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    content: Text(
                      "Incorrect username or password!\nPlease try again...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.8,
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(24.0, 45.0, 24.0, 24.0),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 500),
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.linearToEaseOut);

                                  return SizeTransition(
                                    sizeFactor: animation,
                                    child: child,
                                  );
                                },
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return GeneratedLogInPageWidget();
                                },
                              )),
                          child: Text(
                            "OK",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 20, 125, 184),
                            ),
                          )),
                    ],
                  ));
        }
      },
      child: Container(
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth;

                  final double height = constraints.maxHeight;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: 0,
                        y: 0,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              color: Color.fromARGB(255, 20, 125, 184),
                              child: Text(
                                '''LOG IN''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.8,
                                  fontSize: 24.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ))
                  ]);
                }),
              ),
            ]),
      ),
    );
  }
}
