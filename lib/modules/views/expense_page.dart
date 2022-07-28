import 'package:flutter/material.dart';
import 'package:save_money/util/theme/app_colors.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  _ExpensePageState createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red100,
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
        title: const Text('Expense',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: red100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(height: 100.0,),
                Text(' How much?',style: TextStyle(color: light80,fontSize: 30.0,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Text('\$0',style: TextStyle(color: light80,fontSize: 60.0,fontWeight: FontWeight.normal),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
