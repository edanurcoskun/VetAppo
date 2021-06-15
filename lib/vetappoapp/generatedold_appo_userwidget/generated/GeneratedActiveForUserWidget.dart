import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/GeneratedOldAppoUserWidget.dart';

class GeneratedActiveForUserWidget extends StatefulWidget {
  @override
  _GeneratedActiveForUserWidget createState() =>
      _GeneratedActiveForUserWidget();
}

class _GeneratedActiveForUserWidget
    extends State<GeneratedActiveForUserWidget> {
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
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Text(
                  "Active appointments ",
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              )),
          Container(
              padding: EdgeInsets.only(top: 40.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: FutureBuilder(
                        future: getActiveAppoUser(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return Center(
                                child: Text(
                              "There is not an active appointment!",
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
                                    "Name : " +
                                        snapshot.data[index].data["petName"] +
                                        "\nAge : " +
                                        snapshot.data[index].data["petAge"] +
                                        "\nGender : " +
                                        snapshot.data[index].data["petGender"] +
                                        "\nType : " +
                                        snapshot.data[index].data["petType"] +
                                        "\nWith : ( " +
                                        "${snapshot.data[index].data["anotherName"] == null ? snapshot.data[index].data["ownerName"] : snapshot.data[index].data["anotherName"] + " :: " + snapshot.data[index].data["anotherPhone"]}" +
                                        " )\nNote : " +
                                        "${snapshot.data[index].data["note"] == null ? "'' THERE IS NOT A NOTE. ''" : snapshot.data[index].data["note"]}",
                                    style: TextStyle(
                                        height: 1.5,
                                        fontSize: 17.0,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onLongPress: () {
                                    getAppoId(
                                        snapshot.data[index].data["appoDate"]);
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              content: Text(
                                                  "Do you want to delete this appointment?"),
                                              actions: [
                                                TextButton(
                                                    onPressed: () =>
                                                        Navigator.push(
                                                            context,
                                                            PageRouteBuilder(
                                                              transitionDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          500),
                                                              transitionsBuilder: (BuildContext
                                                                      context,
                                                                  Animation<
                                                                          double>
                                                                      animation,
                                                                  Animation<
                                                                          double>
                                                                      secondaryAnimation,
                                                                  Widget
                                                                      child) {
                                                                animation = CurvedAnimation(
                                                                    parent:
                                                                        animation,
                                                                    curve: Curves
                                                                        .linearToEaseOut);

                                                                return SizeTransition(
                                                                  sizeFactor:
                                                                      animation,
                                                                  child: child,
                                                                );
                                                              },
                                                              pageBuilder: (BuildContext
                                                                      context,
                                                                  Animation<
                                                                          double>
                                                                      animation,
                                                                  Animation<
                                                                          double>
                                                                      secondaryAnimation) {
                                                                return GeneratedOldAppoUserWidget();
                                                              },
                                                            )),
                                                    child: Text("No")),
                                                TextButton(
                                                    onPressed: () {
                                                      deleteAppoData();

                                                      Navigator.push(
                                                          context,
                                                          PageRouteBuilder(
                                                            transitionDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            transitionsBuilder:
                                                                (BuildContext
                                                                        context,
                                                                    Animation<
                                                                            double>
                                                                        animation,
                                                                    Animation<
                                                                            double>
                                                                        secondaryAnimation,
                                                                    Widget
                                                                        child) {
                                                              animation = CurvedAnimation(
                                                                  parent:
                                                                      animation,
                                                                  curve: Curves
                                                                      .linearToEaseOut);

                                                              return SizeTransition(
                                                                sizeFactor:
                                                                    animation,
                                                                child: child,
                                                              );
                                                            },
                                                            pageBuilder: (BuildContext
                                                                    context,
                                                                Animation<
                                                                        double>
                                                                    animation,
                                                                Animation<
                                                                        double>
                                                                    secondaryAnimation) {
                                                              return GeneratedOldAppoUserWidget();
                                                            },
                                                          ));
                                                    },
                                                    child: Text("Delete"))
                                              ],
                                            ));
                                  });
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                thickness: 3.0,
                                color: Color.fromARGB(170, 19, 125, 185),
                              );
                            },
                          );
                        }),
                  )))
        ]));
  }
}
