import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/GeneratedAppoSecondPageUserWidget.dart';

class GeneratedCatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          createPetType("Cat");
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
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return GeneratedAppoSecondPageUserWidget();
                },
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 4.0,
              color: Color.fromARGB(255, 47, 54, 54),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Image.asset(
              "assets/images/fe5a32560870425d8f8d00d9631c8845",
              color: null,
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
        ));
  }
}
