import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/GeneratedAppoFirstPageUserWidget.dart';

class GeneratedBackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          resetFirstTwoPage();
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
                  return GeneratedAppoFirstPageUserWidget();
                },
              ));
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
                child: Icon(
              Icons.arrow_back,
              size: 35.0,
              color: Color.fromARGB(255, 20, 126, 185),
            )),
          ),
        ));
  }
}
