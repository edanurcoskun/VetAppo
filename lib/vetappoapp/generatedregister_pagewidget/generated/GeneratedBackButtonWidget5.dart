import 'package:flutterapp/models/User.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/GeneratedLogInPageWidget.dart';

class GeneratedBackButtonWidget5 extends StatelessWidget {
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

                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-1, 0), 
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return GeneratedLogInPageWidget();
                },
              ));
        },
        child: Container(
          child: ClipRRect(
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 191, 226, 226),
                  border: Border.all(
                    width: 1.0,
                    color: Color.fromARGB(170, 19, 125, 185),
                  ),
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: 34.0,
                  color: Color.fromARGB(255, 20, 126, 185),
                )),
          ),
        ));
  }
}
