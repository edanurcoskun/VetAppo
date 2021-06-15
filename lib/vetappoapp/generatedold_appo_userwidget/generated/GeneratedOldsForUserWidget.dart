import 'package:flutter/material.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedOldsForUserWidget extends StatefulWidget {
  @override
  _GeneratedOldsForUserWidget createState() => _GeneratedOldsForUserWidget();
}

class _GeneratedOldsForUserWidget extends State<GeneratedOldsForUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getOldAppoUser(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: Text(
                "There is not an old appointment!",
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
                        "${snapshot.data[index].data["anotherName"] == null ? snapshot.data[index].data["ownerName"] : snapshot.data[index].data["anotherName"]}" +
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
    );
  }
}
