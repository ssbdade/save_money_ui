import 'package:flutter/material.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class SendEmailPage extends StatefulWidget {
  const SendEmailPage({Key? key}) : super(key: key);

  @override
  _SendEmailPageState createState() => _SendEmailPageState();
}

class _SendEmailPageState extends State<SendEmailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/email_img.png'),
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
                children: const [
                  Text('                Your email is on the way',
                    style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 20.0,),
              const Text('Check your email test@test.com and follow the instructions to reset your password',textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0,color: Colors.black),),
              const SizedBox(height: 170.0,),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  onPressed: () {},
                  child: const Text('Back to Login',style: TextStyle(fontSize: 25.0,color: Colors.white)
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
