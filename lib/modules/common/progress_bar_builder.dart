import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/common/common.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';
import '../../util/common/screen_util.dart';

class ProgressBarBuilder extends StatefulWidget {
  const ProgressBarBuilder({Key? key, required this.listBuilder}) : super(key: key);

  final List listBuilder;

  @override
  State<ProgressBarBuilder> createState() => _ProgressBarBuilderState();
}

class _ProgressBarBuilderState extends State<ProgressBarBuilder> {

  @override
  Widget build(BuildContext context) {
    double total = getListTotal(widget.listBuilder);
    DetailPageController controller = Get.find();

    return ColumnBuilder(
        itemCount: widget.listBuilder.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: height(23), left: width(16), right: width(16)),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height(34),
                      decoration: BoxDecoration(
                        color: light80,
                        borderRadius: BorderRadius.circular(radius(32)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: width(8), right: width(12), top: height(8), bottom: height(8)),
                        child: Row(
                          children: [
                            Container(
                              width: width(14),
                              decoration: BoxDecoration(
                                color: widget.listBuilder[index]["iconColor"],
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: width(7),
                            ),
                            Text(widget.listBuilder[index]["type"],
                              style: AppThemes.lightTheme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    !controller.isIncome.value ?
                    Padding(
                      padding: EdgeInsets.only(top: height(6)),
                      child: Text("- \$${widget.listBuilder[index]["budget"]}",
                        style: expenseTextTheme.bodyMedium,
                      ),
                    ) :
                    Padding(
                      padding: EdgeInsets.only(top: height(6)),
                      child: Text("+ \$${widget.listBuilder[index]["budget"]}",
                        style: incomeTextTheme.bodyMedium,),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(5),
                ),
                AppProgressBar(
                  height: height(12),
                  progressWidth: widget.listBuilder[index]["budget"]/total * context.width,
                  backgroundColor: light60,
                  progressColor: widget.listBuilder[index]["iconColor"],
                ),
              ],
            ),
          );
        });
  }

  static double getListTotal(List list) {
    double total = 0;
    for(int i = 0; i < list.length; i++) {
      total += list[i]["budget"];
    }
    return total;
  }
}
