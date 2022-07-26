import 'package:flutter/material.dart';
import 'package:save_money/modules/common/theme_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final Key _formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_forward),
        title: const Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
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
                      decoration: ThemeHelper().textInputDecoration('Name','Enter your name'),
                    ),
                    const SizedBox(height: 50.0,),
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
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Column(
                  children: [
                    Transform.scale(
                    scale: 1.8,
                    child: Checkbox(value: isChecked, onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                  ),
                  ],
                ),
                const SizedBox(width: 15.0,),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text('By signing up, you agree to the ',style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w400),),
                          ],
                        ),
                        const SizedBox(width: 5.0,),
                        Column(
                          children: const [
                            Text('Terms of ',style: TextStyle(color: Colors.blue,fontSize: 18.0,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Service and Privacy Policy                          ',style: TextStyle(color: Colors.blue,fontSize: 18.0,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            SizedBox(
              width: 400.0,
              height: 50.0,
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                onPressed: () {},
                child: const Text('Sign Up',style: TextStyle(fontSize: 25.0,color: Colors.white)
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            const Center(
              child: Text('Or with',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15.0),),
            ),
            const SizedBox(height: 8.0,),
            Container(
              child: SizedBox(
                width: 400,
                height: 60.0,
                child: OutlinedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.google,size: 35,),
                  onPressed: () {},
                  label: const Text('Sign up with google',style: TextStyle(fontSize: 20.0,color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            const Center(
             child: Text.rich(
               TextSpan(
                 text: 'Already have an account?  ',
                 style: TextStyle(fontSize: 20),
                 children: <TextSpan>[
                   TextSpan(
                     text: 'Login',
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
    );
  }
}
