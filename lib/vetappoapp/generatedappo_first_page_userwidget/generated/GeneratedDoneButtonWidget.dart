import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/GeneratedAppoFirstPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/GeneratedAppoSecondPageUserWidget.dart';

class GeneratedDoneButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
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
                if (typeIsEmpty() == "empty") {
                  return GeneratedAppoFirstPageUserWidget();
                }
                return GeneratedAppoSecondPageUserWidget();
              },
            )),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
                color: Color.fromARGB(255, 20, 126, 185),
                child: Icon(
                  Icons.done,
                  size: 35.0,
                  color: Color.fromARGB(200, 255, 255, 255),
                )),
          ),
        ));
  }
}
