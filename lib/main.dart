import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:egovservice/LoginPage.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      home:
      Scaffold(
        body: Container(
        child: LoginPage(),
    ),
      )
    );
  }
}





