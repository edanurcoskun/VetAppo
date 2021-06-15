import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/vetappoapp/generatedappo_second_page_userwidget/GeneratedAppoSecondPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_third_page_userwidget/GeneratedAppoThirdPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_first_page_userwidget/GeneratedAppoFirstPageUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_detail_pagewidget/GeneratedAppoDetailPageWidget.dart';
import 'package:flutterapp/vetappoapp/generatedold_appo_userwidget/GeneratedOldAppoUserWidget.dart';
import 'package:flutterapp/vetappoapp/generatedappo_pagewidget/GeneratedAppoPageWidget.dart';
import 'package:flutterapp/vetappoapp/generatedregister_pagewidget/GeneratedRegisterPageWidget.dart';
import 'package:flutterapp/vetappoapp/generatedlog_in_pagewidget/GeneratedLogInPageWidget.dart';
import 'package:flutterapp/vetappoapp/generatedupdate_pagewidget/GeneratedUpdatePageWidget.dart';

void main() {
  runApp(VetAppoApp());
}

class VetAppoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 191, 226, 226), // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'VetAppo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedLog_in_pageWidget',
      routes: {
        '/GeneratedAppo_second_page_userWidget': (context) =>
            GeneratedAppoSecondPageUserWidget(),
        '/GeneratedAppo_third_page_userWidget': (context) =>
            GeneratedAppoThirdPageUserWidget(),
        '/GeneratedAppo_first_page_userWidget': (context) =>
            GeneratedAppoFirstPageUserWidget(),
        '/GeneratedUpdate_page_userWidget': (context) =>
            GeneratedUpdatePageWidget(),
        '/GeneratedAppo_detail_pageWidget': (context) =>
            GeneratedAppoDetailPageWidget(),
        '/GeneratedOld_appo_userWidget': (context) =>
            GeneratedOldAppoUserWidget(),
        '/GeneratedAppo_pageWidget': (context) => GeneratedAppoPageWidget(),
        '/GeneratedRegister_pageWidget': (context) =>
            GeneratedRegisterPageWidget(),
        '/GeneratedLog_in_pageWidget': (context) => GeneratedLogInPageWidget(),
      },
    );
  }
}
