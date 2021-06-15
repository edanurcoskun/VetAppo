import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/GeneratedAppoSecondPageUserWidget.dart';

class GeneratedDogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          createPetType("Dog");
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
              "assets/images/52a2bcfe5dc5476faede4da7c36b088d",
              color: null,
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
        ));
  }
}
