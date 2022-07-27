import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class OnBoarding3Page extends StatelessWidget {
  const OnBoarding3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img_3.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
               const Center(
                 child: Text('Planning ahead',
                  style: TextStyle(color: Colors.black,fontSize: 33.0,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
              ),
               ),
              const SizedBox(height: 10.0,),
              const Text('Setup your budget for each category so you in control',style: TextStyle(color: Colors.grey,fontSize: 18.0,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100.0,),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  onPressed: () {},
                  child: const Text('Sign Up',style: TextStyle(fontSize: 20.0,color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
              Container(
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(onPressed: () {},
                    child: const Text('Login',style: TextStyle(fontSize: 20.0,color: Colors.blue),
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
