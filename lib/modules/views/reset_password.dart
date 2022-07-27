import 'package:flutter/material.dart';
import 'package:save_money/modules/common/theme_helper.dart';
class ResetPassPage extends StatefulWidget {
  const ResetPassPage({Key? key}) : super(key: key);

  @override
  _ResetPassPageState createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {

  final Key _formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text('Reset Password',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 80.0,),
                    TextField(
                      style: const TextStyle(height: 3.0),
                      decoration: ThemeHelper().textInputDecoration('New Password'),
                    ),
                    const SizedBox(height: 30.0,),
                    TextField(
                      style: const TextStyle(height: 3.0),
                      decoration: ThemeHelper().textInputDecoration('Retype New Password'),
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
            ),
          ],
        ),
      ),
    );
  }
}
