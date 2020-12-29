import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Vazir",
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black))),
      title: "اینستاگرام",
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MyHomePage(),
      ),
    );
  }
}
