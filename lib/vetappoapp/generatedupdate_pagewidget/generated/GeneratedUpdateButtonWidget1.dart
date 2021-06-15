import 'package:flutter/material.dart';
import 'package:flutterapp/models/User.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/GeneratedAppoFirstPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/GeneratedAppoPageWidget.dart';
import 'package:flutterapp/vetappoapp/generatedupdate_pagewidget/GeneratedUpdatePageWidget.dart';

class GeneratedUpdateButtonWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controlForUsername();
        String message;
        if (isEmpty() == "empty") {
          message = "You must fill in all text fields, please try again...";
        } else {
          if (isThere == "yes") {
            updateUserIfYes();
            message = "Your account has been updated!";
          } else if (isThere == "no") {
            updateUserIfNo();
            message = "This username is already exist, please try again...";
          }
        }
        String who = whoseId();
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  content: Text(
                    message,
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
                                if (isEmpty() == "empty") {
                                  resetExceptId();
                                  return GeneratedUpdatePageWidget();
                                } else {
                                  if (isThere == "yes") {
                                    if (who == "admin") {
                                      return GeneratedAppoPageWidget();
                                    } else if (who == "user") {
                                      return GeneratedAppoFirstPageUserWidget();
                                    }
                                  } else {
                                    return GeneratedUpdatePageWidget();
                                  }
                                }
                                return GeneratedUpdatePageWidget();
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
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
              color: Color.fromARGB(255, 20, 125, 184),
              child: Text(
                '''UPDATE''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.8,
                  fontSize: 22.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ))),
    );
  }
}
