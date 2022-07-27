import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class RetypePinPage extends StatefulWidget {
  const RetypePinPage({Key? key}) : super(key: key);

  @override
  _RetypePinPageState createState() => _RetypePinPageState();
}

class _RetypePinPageState extends State<RetypePinPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        children:  [
          const SizedBox(height: 100.0,),
          Center(child: Text("Let's setup your pin",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)
          ),
          const SizedBox(height: 80.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: width * 0.1,
                width: width * 0.1,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: width * 0.1,
                width: width * 0.1,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: width * 0.1,
                width: width * 0.1,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: width * 0.1,
                width: width * 0.1,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}