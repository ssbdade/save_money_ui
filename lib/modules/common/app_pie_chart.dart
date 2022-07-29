import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/data.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

class AppPieChart extends StatefulWidget {
  const AppPieChart({Key? key, required this.dataMap}) : super(key: key);
  final Map<String, double> dataMap;

  @override
  State<AppPieChart> createState() => _AppPieChartState();
}

class _AppPieChartState extends State<AppPieChart> {
  DetailPageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Obx(() => PieChart(
        dataMap: widget.dataMap,
        colorList: controller.isIncome.value ? incomeColorList : expenseColorList,
        legendOptions: const LegendOptions(
          showLegends: false,
        ),
        chartValuesOptions: const ChartValuesOptions(
          showChartValues: false,
          showChartValueBackground: false,
        ),
        chartRadius: height(192),
        chartType: ChartType.ring,
        centerText: controller.isIncome.value ? LocaleKeys.totalEarned : LocaleKeys.totalSpent,
        centerTextStyle: AppThemes.lightTheme.textTheme.bodyMedium,
        ringStrokeWidth: width(24),
        animationDuration: const Duration(milliseconds: 0),
      )),
    );
  }
}
