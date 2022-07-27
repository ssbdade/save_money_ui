import 'package:flutter/material.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {

final Key _formKey = GlobalKey<FormState>();

bool _isObscure = true;
bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text('Forgot Password',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100.0,),
            Row(
              children: const [
                Text("  Don't worry." ,style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: const [
                Text(
                  " Enter your email and we'll ",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: const [
                Text(
                  " send you a link to reset your ",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: const [
                Text(
                  " password. ",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 30.0,),
            Column(
              children: [
                Form(
                  key: _formKey,
                  child: TextField(
                    style: const TextStyle(height: 3.0),
                    decoration: ThemeHelper().textInputDecoration('Email','Enter your email'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0,),
            SizedBox(
              width: 400.0,
              height: 50.0,
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                onPressed: () {},
                child: const Text('Continue',style: TextStyle(fontSize: 25.0,color: Colors.white)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
