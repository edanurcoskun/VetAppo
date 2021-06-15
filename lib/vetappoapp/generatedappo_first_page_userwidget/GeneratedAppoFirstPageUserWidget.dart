import 'package:flutter/material.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedAnotherPetWidget1.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedExitButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedDogWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedSettingsButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedNewAppoHeaderWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedCatWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedBudgieWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedDoneButtonWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/generated/GeneratedHamsterWidget.dart';

class GeneratedAppoFirstPageUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 191, 226, 226),
          body: Material(
              child: SingleChildScrollView(
                  child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Container(
              width: data.size.width,
              height: data.size.height,
              child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Container(
                        color: Color.fromARGB(255, 191, 226, 226),
                      ),
                    ),
                    Positioned(
                      left: data.size.width / 1.2,
                      top: data.size.height / 18.10571428571429,
                      right: null,
                      bottom: null,
                      width: 34,
                      height: 34,
                      child: GeneratedExitButtonWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 7.10126582278481,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.123244929797192,
                      height: data.size.height / 21.33333333333333,
                      child: GeneratedNewAppoHeaderWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 4.005496183206107,
                      right: null,
                      bottom: null,
                      width: data.size.width / 2.547058823529412,
                      height: data.size.height / 4.505882352941176,
                      child: GeneratedCatWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 1.818181818181818,
                      top: data.size.height / 4.005496183206107,
                      right: null,
                      bottom: null,
                      width: data.size.width / 2.547058823529412,
                      height: data.size.height / 4.505882352941176,
                      child: GeneratedDogWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 16.36363636363636,
                      top: data.size.height / 1.901780821917808,
                      right: null,
                      bottom: null,
                      width: data.size.width / 2.547058823529412,
                      height: data.size.height / 4.505882352941176,
                      child: GeneratedBudgieWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 1.818181818181818,
                      top: data.size.height / 1.901780821917808,
                      right: null,
                      bottom: null,
                      width: data.size.width / 2.547058823529412,
                      height: data.size.height / 4.505882352941176,
                      child: GeneratedHamsterWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 14.4,
                      top: data.size.height / 1.273390557939914,
                      right: null,
                      bottom: null,
                      width: data.size.width / 1.358490566037736,
                      height: data.size.height / 6.06122448979592,
                      child: GeneratedAnotherPetWidget1(),
                    ),
                    Positioned(
                      left: data.size.width / 1.2,
                      top: data.size.height / 1.197390557939914,
                      right: null,
                      bottom: null,
                      width: 40.0,
                      height: 40.0,
                      child: GeneratedDoneButtonWidget(),
                    ),
                    Positioned(
                      left: data.size.width / 1.368821292775665,
                      top: data.size.height / 18.10571428571429,
                      right: null,
                      bottom: null,
                      width: 34,
                      height: 34,
                      child: GeneratedSettingsButtonWidget(),
                    )
                  ]),
            ),
          )))),
    );
  }
}
