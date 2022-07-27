import 'package:flutter/material.dart';
import 'package:save_money/modules/common/theme_helper.dart';

class AddWalletPage extends StatefulWidget {
  const AddWalletPage({Key? key}) : super(key: key);

  @override
  _AddWalletPageState createState() => _AddWalletPageState();
}

class _AddWalletPageState extends State<AddWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
        title: const Text('Add new wallet',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                SizedBox(height: 100.0,),
                Text(' Balance',
                  style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.normal),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            Row(
              children: const [
                Text(' \$00.0',style: TextStyle(color: Colors.white,fontSize: 60.0,fontWeight: FontWeight.normal),),
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 400.0,),
                  RaisedButton(
                    child: const Text('Show'),
                    onPressed: () => _onButtonPressed(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onButtonPressed() {
    showModalBottomSheet(context: context, builder: (context) {
      return Column(
        children: <Widget>[
          const SizedBox(height: 20.0,),
          TextField(
            style: const TextStyle(height: 3.0),
            decoration: ThemeHelper().textInputDecoration('Chase'),
          ),
          const SizedBox(height: 10.0,),
          TextField(
            style: const TextStyle(height: 2.0),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              labelText: "Bank",
            ),
          ),
          const SizedBox(height: 20.0,),
          Row(
            children: const [
              Text(" Bank",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(height: 10.0,),
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      // Container(
                      //   child: Image.asset('assets/bank1.jpg'),
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
      );
    });
  }
}
