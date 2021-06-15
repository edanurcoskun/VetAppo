import 'package:flutter/material.dart';
import 'package:flutterapp/models/User.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/GeneratedRegisterPageWidget.dart';

class GeneratedCreateAnAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        resetUser();
        Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 700),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.linearToEaseOut);

                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return GeneratedRegisterPageWidget();
              },
            ));
      },
      child: Text(
        '''Create an account''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.171875,
          fontSize: 22.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 20, 126, 185),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
