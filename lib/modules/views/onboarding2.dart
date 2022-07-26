import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class OnBoarding2Page extends StatelessWidget {
  const OnBoarding2Page({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/img_2.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('        Know where your',style: TextStyle(color: Colors.black,fontSize: 33.0,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10.0),
              const Text('               money goes',style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10.0,),
              const Text('                   Track your transaction easily,',style: TextStyle(color: Colors.grey,fontSize: 18.0,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10.0,),
              const Text('            with categories and financial report',style: TextStyle(color: Colors.grey,fontSize: 18.0,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20.0),
              Center(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: 1,
                ),
              ),
              const SizedBox(height: 20.0,),
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
