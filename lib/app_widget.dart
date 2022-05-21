import 'package:flutter/material.dart';

import 'screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Free Games List",
      initialRoute: "/home",
      routes: {
        "/home":(context) => Home(),
      },
    );
  }
}