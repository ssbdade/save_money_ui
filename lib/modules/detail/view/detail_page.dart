import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/common/app_task_bar.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/constants/data.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';
import '../../common/common.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final DetailPageController controller = Get.put(DetailPageController());

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
    DetailPageController controller = Get.find();

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border: const Border(bottom: BorderSide(color: Colors.transparent)),
          backgroundColor: white,
          leading: SvgPicture.asset(AppFileName.arrow),
          middle: Text(
            LocaleKeys.financialTitle,
            style: AppThemes.lightTheme.textTheme.titleSmall,
          ),
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Thanh tac vu thu 1
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width(16), vertical: height(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: height(40),
                              width: width(96),
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: SvgPicture.asset(AppFileName.arrowDown2),
                                label: Text(
                                  LocaleKeys.month,
                                  style:
                                      AppThemes.lightTheme.textTheme.bodySmall,
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius(40)),
                                  ),
                                )),
                              ),
                            ),
                            const AppToggleButton(),
                          ],
                        ),
                      ),

                      //Bieu do
                      Obx(
                        () => controller.isSelected[0]
                            ? const AppLineChart()
                            : AppPieChart(
                                dataMap: controller.isIncome.value
                                    ? DataApp.incomeDataChart
                                    : DataApp.expenseDataChart,
                              ),
                      ),
                    ],
                  ),
                ),

                //Nut truot
                Obx(
                  () => Padding(
                    padding: controller.isSelected[0]
                        ? EdgeInsets.only(top: height(9))
                        : EdgeInsets.only(top: height(58)),
                    child: const AppSlidingSwitch(),
                  ),
                ),

                //Thanh tac vu thu 2
                const AppTaskBar(),

                //List view duoi cung
                Obx(() => controller.dropdownValue.value == LocaleKeys.transaction ? AppColumnBuilder(
                    listBuilder: controller.isIncome.value
                        ? DataApp.incomeDataList
                        : DataApp.expenseDataList) : ProgressBarBuilder(
                  listBuilder: controller.isIncome.value
                      ? DataApp.incomeDataList
                      : DataApp.expenseDataList,
                )),
              ],
            ),
          ),
        ));
  }
}
