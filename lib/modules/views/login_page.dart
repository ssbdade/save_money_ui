import 'package:flutter/material.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final Key _formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text('Login',style: TextStyle(color: Colors.black),),
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
                    const SizedBox(height: 70.0,),
                    TextField(
                      style: const TextStyle(height: 3.0),
                      decoration: ThemeHelper().textInputDecoration('Email','Enter your email'),
                    ),
                    const SizedBox(height: 50.0,),
                    TextField(
                      style: const TextStyle(height: 2.0),
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off,color: Colors.grey,),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    Row(
                      children: [
                        SizedBox(
                          width: 400.0,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            onPressed: () {},
                            child: const Text('Login',style: TextStyle(fontSize: 25.0,color: Colors.white)
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0,),
                    Row(
                      children: const [
                        Text('                          Forgot Password?',
                          style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0,),
                    const Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Dont have an account?  ',
                          style: TextStyle(fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ],
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
