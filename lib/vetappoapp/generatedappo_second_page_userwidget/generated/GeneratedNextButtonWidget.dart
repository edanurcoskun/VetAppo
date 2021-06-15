import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/GeneratedAppoSecondPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/GeneratedAppoThirdPageUserWidget.dart';

class GeneratedNextButtonWidget extends StatelessWidget {
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
                if (isThereEmptyPlace() == "empty") {
                  return GeneratedAppoSecondPageUserWidget();
                }
                createAppoYear(DateTime.now().year.toString());
                createAppoMonth(
                    DateTime.now().month.toString().padLeft(2, '0'));
                createAppoDay(DateTime.now().day.toString().padLeft(2, '0'));
                return GeneratedAppoThirdPageUserWidget();
              },
            )),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
                color: Color.fromARGB(255, 20, 126, 185),
                child: Icon(
                  Icons.arrow_forward,
                  size: 35.0,
                  color: Color.fromARGB(255, 191, 226, 226),
                )),
          ),
        ));
  }
}
