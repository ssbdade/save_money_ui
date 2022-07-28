import 'package:flutter/material.dart';

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
        backgroundColor: Colors.red,
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
        title: const Text('Expense',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
    );
  }
}
