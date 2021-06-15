import 'package:flutter/material.dart';
import 'package:flutterapp/models/User.dart';
import 'package:flutterapp/vetappoapp/generatedupdate_pagewidget/GeneratedUpdatePageWidget.dart';

class GeneratedSettingsButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          resetUpdate();
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
                  return GeneratedUpdatePageWidget();
                },
              ));
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
                child: Icon(
              Icons.settings,
              size: 34.0,
              color: Color.fromARGB(255, 47, 54, 54),
            )),
          ),
        ));
  }
}
