import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedappo_detail_pagewidget/GeneratedAppoDetailPageWidget.dart';

class GeneratedTodaysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              child: Container(
                height: 40,
                color: Color.fromARGB(170, 19, 125, 185),
                padding: EdgeInsets.fromLTRB(10, 3, 0, 0),
                child: Text(
                  '''Today’s appointments''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 25.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: FutureBuilder(
                    future: getTodayAppo(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                            child: Text(
                          "There is not an appointment for today!",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 17.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ));
                      }
                      return ListView.separated(
                        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              "( " +
                                  snapshot.data[index].data["appoDay"] +
                                  "." +
                                  snapshot.data[index].data["appoMonth"] +
                                  "." +
                                  snapshot.data[index].data["appoYear"] +
                                  " / " +
                                  snapshot.data[index].data["appoHour"] +
                                  ".00 )",
                              style: TextStyle(
                                height: 1.5,
                                fontSize: 17.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ),
                            subtitle: Text(
                              "Name: " +
                                  snapshot.data[index].data["petName"] +
                                  "\nAge: " +
                                  snapshot.data[index].data["petAge"] +
                                  "\nGender: " +
                                  snapshot.data[index].data["petGender"] +
                                  "\nType: " +
                                  snapshot.data[index].data["petType"],
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 17.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            onTap: () {
                              createWhichPetName(
                                  snapshot.data[index].data["petName"]);
                              createWhen(snapshot.data[index].data["appoDate"]);
                              createWhichOwner(
                                  snapshot.data[index].data["ownerName"]);
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 500),
                                    transitionsBuilder: (BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation,
                                        Widget child) {
                                      animation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.linearToEaseOut);

                                      return SlideTransition(
                                        position: Tween<Offset>(
                                          begin: const Offset(
                                              1, 0), 
                                          end: Offset.zero,
                                        ).animate(animation),
                                        child: child,
                                      );
                                    },
                                    pageBuilder: (BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation) {
                                      return GeneratedAppoDetailPageWidget();
                                    },
                                  ));
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            thickness: 3.0,
                            color: Color.fromARGB(170, 19, 125, 185),
                          );
                        },
                      );
                    }),
              ),
            ),
          ),
        ]));
  }
}
