import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/report/views/financial_report_pageview/budget.dart';
import 'package:save_money_ui/modules/report/views/financial_report_pageview/expense.dart';
import 'package:save_money_ui/modules/report/views/financial_report_pageview/income.dart';
import 'package:save_money_ui/modules/report/views/financial_report_pageview/quote.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final ReportPageController controller = Get.put(ReportPageController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ReportPageController controller = Get.find();
    return Scaffold(
      body: Stack(children: [
        PageView(
          children: [
            expenseContainer(context),
            incomeContainer(context),
            budgetContainer(context),
            quoteContainer(context)
          ],
          onPageChanged: (index) {
            setState(() {
              controller.changeValue(index);
            });
          },
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(width(13), height(63), width(13), 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  4,
                  (index) => Obx(
                        () => DotIndex(
                            isHighLight:
                                index == controller.currentIndex.value % 4),
                      )),
            ),
          ),
        )
      ]),
    );
  }
}

class DotIndex extends StatelessWidget {
  const DotIndex({Key? key, required this.isHighLight}) : super(key: key);
  final bool isHighLight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(4),
      width: width(85),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius(4)),
        color: isHighLight ? white : white.withOpacity(0.24),
      ),
    );
  }
}

class ReportPageController extends GetxController {
  var currentIndex = 0.obs;
  changeValue(int a) => currentIndex.value = a;
}
