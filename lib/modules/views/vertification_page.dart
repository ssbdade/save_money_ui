import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class VertificationPage extends StatefulWidget {
  const VertificationPage({Key? key}) : super(key: key);

  @override
  _VertificationPageState createState() => _VertificationPageState();
}

class _VertificationPageState extends State<VertificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Verification',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 250.0,),
            Row(
              children: const [
                Text('  Enter your',style: TextStyle(color: Colors.black,fontSize: 40.0,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: const [
                Text('  Verification code',style: TextStyle(color: Colors.black,fontSize: 40.0,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 30.0,),
            Center(
              child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value){
                    print(value);
                  },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  //borderRadius: BorderRadius.circular(10.0),
                  fieldHeight: 30,
                  fieldWidth: 20,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.grey,
                  //selectedColor: Colors.brown,
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              children: const [
                Text('  04:59',style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.normal),),
              ],
            ),
            const SizedBox(height: 10.0,),
            Column(
              children: [
                Row(
                  children: const [
                    Text('  We sent verification to your ',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal),),
                  ],
                ),
                Row(
                  children: const [
                    Text('  email',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal),),
                    SizedBox(width: 5.0,),
                    Text('brajaoma*****@gmail.com.',style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.normal),),
                    SizedBox(width: 5.0,),
                    Text('You can',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal),),
                  ],
                ),
                Row(
                  children: const [
                    Text('  check your inbox. ',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
            Row(
              children: const [
                Text('  I didnt received the code? Send again',style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.normal,decoration: TextDecoration.underline),),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: [
                SizedBox(
                  width: 400.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ThemeHelper().buttonStyle(),
                    onPressed: () {},
                    child: const Text('Verify',style: TextStyle(fontSize: 25.0,color: Colors.white)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
