import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/GeneratedAppoFirstPageUserWidget.dart';

class GeneratedNewAppointmentWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.elasticInOut);

              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return GeneratedAppoFirstPageUserWidget();
            },
          )),
      child: Text(
        '''new appointment''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 18.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
