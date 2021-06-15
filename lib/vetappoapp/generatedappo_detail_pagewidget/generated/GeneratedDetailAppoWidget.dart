import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedDetailAppoWidget extends StatelessWidget {
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
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Appointment detail of " + whichPetText,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 22.0,
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
                    future: getAppoDetail(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                            child: Text(
                          "There is not an information\nabout this appointment!",
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
                              "Owner : ( " +
                                  snapshot.data[index].data["ownerName"] +
                                  " :: " +
                                  snapshot.data[index].data["ownerPhone"] +
                                  " )\nWith : ( " +
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
