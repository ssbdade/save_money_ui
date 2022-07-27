import 'package:flutter/material.dart';

class SetPage extends StatefulWidget {
  const SetPage({Key? key}) : super(key: key);

  @override
  _SetPageState createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 300.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/done.png'),
              ),
            ),
          child: const Text("You are set !",style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),),
          ),
        ),
    );
  }
}
