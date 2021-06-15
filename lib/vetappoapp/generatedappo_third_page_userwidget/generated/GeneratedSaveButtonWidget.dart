import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/GeneratedAppoThirdPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/GeneratedOldAppoUserWidget.dart';

class GeneratedSaveButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String message;
        if (isEmptyAppo() == "empty") {
          message =
              "Make sure you fill in the required fields.\nIf you filled one field about the another person information, you must fill other field, too. Please try again...";
        } else {
          createAppoData();
          message = "Your appointment has been saved!";
        }
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  content: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.8,
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(24.0, 45.0, 24.0, 24.0),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 500),
                              transitionsBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                  Widget child) {
                                animation = CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.linearToEaseOut);

                                return SizeTransition(
                                  sizeFactor: animation,
                                  child: child,
                                );
                              },
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                if (isEmptyAppo() == "empty") {
                                  appoYearText = "${DateTime.now().year}";
                                  appoMonthText =
                                      "${DateTime.now().month.toString().padLeft(2, '0')}";
                                  appoDayText =
                                      " ${DateTime.now().day.toString().padLeft(2, '0')}";
                                  return GeneratedAppoThirdPageUserWidget();
                                } else {
                                  resetFirstTwoPage();
                                  resetLastTwoPage();
                                  return GeneratedOldAppoUserWidget();
                                }
                              },
                            )),
                        child: Text(
                          "OK",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 20, 125, 184),
                          ),
                        )),
                  ],
                ));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          color: Color.fromARGB(255, 20, 125, 184),
          child: Text(
            '''SAVE''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.8,
              fontSize: 22.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
