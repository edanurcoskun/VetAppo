import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutterapp/models/Appointment.dart';

class GeneratedDateWidget1 extends StatefulWidget {
  @override
  _GeneratedDateWidget1 createState() => _GeneratedDateWidget1();
}

class _GeneratedDateWidget1 extends State<GeneratedDateWidget1> {
  DateTime pickedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text(
                pickedDate == null
                    ? " ${DateTime.now().day.toString().padLeft(2, '0')} / ${DateTime.now().month.toString().padLeft(2, '0')} / ${DateTime.now().year}"
                    : " ${pickedDate.day.toString().padLeft(2, '0')} / ${pickedDate.month.toString().padLeft(2, '0')} / ${pickedDate.year}",
                style: TextStyle(
                  height: 0.5,
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              trailing: Icon(Icons.calendar_today),
              onTap: () {
                DatePicker.showDatePicker(context,
                        theme: DatePickerTheme(
                          itemHeight: 65.0,
                          doneStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                          headerColor: Color.fromARGB(255, 191, 226, 226),
                          itemStyle: TextStyle(
                            color: Color.fromARGB(255, 151, 186, 186),
                            fontWeight: FontWeight.bold,
                          ),
                          containerHeight: 90.0,
                        ),
                        showTitleActions: true,
                        minTime: DateTime.now(),
                        maxTime: DateTime(
                            DateTime.now().year,
                            DateTime.now().month + 1,
                            DateTime.now().day + 15), onChanged: (date) {
                  print('change $date');
                }, onConfirm: (date) {
                  print('confirm $date');
                }, currentTime: DateTime.now(), locale: LocaleType.en)
                    .then((date) {
                  setState(() {
                    pickedDate = date;
                  });
                  createAppoYear(pickedDate.year.toString());
                  createAppoMonth(pickedDate.month.toString().padLeft(2, '0'));
                  createAppoDay(pickedDate.day.toString().padLeft(2, '0'));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
