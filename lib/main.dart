import 'package:flutter/material.dart';
import 'package:save_money/modules/splash/splash_page.dart';
import 'package:save_money/modules/views/onboarding1.dart';
import 'package:save_money/modules/views/onboarding2.dart';
import 'package:save_money/modules/views/onboarding3.dart';
import 'package:save_money/modules/views/signup_page.dart';
import 'package:save_money/modules/views/vertification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: VertificationPage(),
    );
  }
}