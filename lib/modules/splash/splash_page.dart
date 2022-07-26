import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
class SplashPage extends StatelessWidget {
  SplashPage({required String title}) {
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromRGBO(255, 17, 17, 100), Color.fromRGBO(255, 129, 38, 100)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade600,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Center(
                  child: Container(
                    width: 268.0,
                    height: 268.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/splash_image.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}