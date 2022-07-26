import 'package:flutter/material.dart';
import 'package:save_money_ui/modules/common/financial_report_pageview/budget.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import '../../common/financial_report_pageview/expense.dart';
import '../../common/financial_report_pageview/income.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          expenseContainer(context),
          incomeContainer(context),
          budgetContainer(context),
        ],
      ),
    );
  }
}

