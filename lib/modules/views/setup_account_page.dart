import 'package:flutter/material.dart';

import '../common/theme_helper.dart';
class SetupAccountPage extends StatefulWidget {
  const SetupAccountPage({Key? key}) : super(key: key);

  @override
  _SetupAccountPageState createState() => _SetupAccountPageState();
}

class _SetupAccountPageState extends State<SetupAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80.0,),
            const Text("Let's setup your account !",
              style: TextStyle(color: Colors.black,fontSize: 40.0,fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 40.0),
            Row(
              children: const [
                Text(' Account can be your bank, credit card or ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.normal),),
              ],
            ),
            Row(
              children: const [
                Text(' your wallet ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.normal),),
              ],
            ),
            const SizedBox(height: 350.0,),
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
          ],
        ),

      ),
    );
  }
}
