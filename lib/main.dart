import 'package:flutter/material.dart';
import 'package:save_money/modules/splash/splash_page.dart';
import 'package:save_money/modules/views/add_account.dart';
import 'package:save_money/modules/views/add_wallet.dart';
import 'package:save_money/modules/views/expense_page.dart';
import 'package:save_money/modules/views/forgot_password.dart';
import 'package:save_money/modules/views/login_page.dart';
import 'package:save_money/modules/views/onboarding_screen/onboarding1.dart';
import 'package:save_money/modules/views/onboarding_screen/onboarding2.dart';
import 'package:save_money/modules/views/onboarding_screen/onboarding3.dart';
import 'package:save_money/modules/views/onboarding_page.dart';
import 'package:save_money/modules/views/pin_page.dart';
import 'package:save_money/modules/views/reset_password.dart';
import 'package:save_money/modules/views/send_email.dart';
import 'package:save_money/modules/views/setup_account_page.dart';
import 'package:save_money/modules/views/signup_page.dart';
import 'package:save_money/modules/views/vertification_page.dart';
import 'package:save_money/modules/views/you_are_set_page.dart';

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
      home: OnboardingPage(),
    );
  }
}