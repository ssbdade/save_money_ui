import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

class AppLineChart extends StatefulWidget {
  const AppLineChart({Key? key}) : super(key: key);

  @override
  State<AppLineChart> createState() => _AppLineChartState();
}

class _AppLineChartState extends State<AppLineChart> {
  DetailPageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, height(19), 0, height(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width(16)),
            child: Obx(() => Text(controller.isIncome.value ? LocaleKeys.totalEarned : LocaleKeys.totalSpent,
              style: AppThemes.lightTheme.textTheme.bodyMedium,
            ),)
          ),
          SizedBox(
            height: height(140),
            width: width(375),
            child: LineChart(
              LineChartData(
                borderData: FlBorderData(
                  show: false,
                ),
                gridData: FlGridData(
                    show: false
                ),
                titlesData: FlTitlesData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: violet100,
                    barWidth: 6,
                    dotData: FlDotData(
                      show: false,
                    ),
                    spots: const [
                      FlSpot(0, 0),
                      FlSpot(20, -30),
                      FlSpot(50, 50),
                      FlSpot(80, 24),
                      FlSpot(90, 120),
                      FlSpot(100, 0),
                      FlSpot(105, 0),
                    ],
                    isCurved: true,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: lineChartGradient,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
