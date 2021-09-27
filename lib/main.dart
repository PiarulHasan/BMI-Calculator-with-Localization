import 'package:calculator/language.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      saveLocale: true,
      path: "resources/lang",
      supportedLocales: [
        Locale("bn", "BN"),
        Locale("en", "EN"),

      ],
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Language(),
    );
  }
}


