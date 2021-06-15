import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/GeneratedOldAppoUserWidget.dart';

class GeneratedOldAppointmentsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
                return GeneratedOldAppoUserWidget();
              },
            ));
      },
      child: Text(
        '''old appointments''',
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
