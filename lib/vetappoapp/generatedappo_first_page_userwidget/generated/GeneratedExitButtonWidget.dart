import 'package:flutter/material.dart';
import 'package:flutterapp/models/User.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/GeneratedLogInPageWidget.dart';

class GeneratedExitButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          resetUser();
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
                  return GeneratedLogInPageWidget();
                },
              ));
        },
        child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Container(
                    child: Icon(
                  Icons.power_settings_new,
                  size: 35.0,
                  color: Colors.red[900],
                )),
              ),
            )));
  }
}
