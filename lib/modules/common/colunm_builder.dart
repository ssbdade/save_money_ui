import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final int itemCount;

  const ColumnBuilder({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.verticalDirection = VerticalDirection.down,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  List.generate(itemCount,
              (index) => itemBuilder(context, index)).toList(),
    );
  }
}

class AppColumnBuilder extends StatefulWidget {
  const AppColumnBuilder({Key? key, required this.listBuilder}) : super(key: key);
  final List listBuilder;

  @override
  State<AppColumnBuilder> createState() => _AppColumnBuilderState();
}

class _AppColumnBuilderState extends State<AppColumnBuilder> {


  @override
  Widget build(BuildContext context) {
    DetailPageController controller = Get.find();

    return ColumnBuilder(itemCount: widget.listBuilder.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: height(8), left: width(19), right: width(20)),
            child: Container(
              height: height(89),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius(24)),
                color: light80,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(width(17), height(14), width(16), height(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width(8)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius(16)),
                          color: widget.listBuilder[index]["backgroundColor"],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width(10), vertical: height(10)),
                          child: SvgPicture.asset(widget.listBuilder[index]["icon"],
                            color: widget.listBuilder[index]["iconColor"],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: height(6)),
                          child: Text(widget.listBuilder[index]["type"],
                            style: AppThemes.lightTheme.textTheme.labelMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height(6.5)),
                          child: Text(widget.listBuilder[index]["description"],
                            style: AppThemes.lightTheme.textTheme.labelSmall,),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        !controller.isIncome.value ?
                        Padding(
                          padding: EdgeInsets.only(top: height(6)),
                          child: Text("- \$${widget.listBuilder[index]["budget"]}",
                            style: expenseTextTheme.displaySmall,
                          ),
                        ) :
                        Padding(
                          padding: EdgeInsets.only(top: height(6)),
                          child: Text("+ \$${widget.listBuilder[index]["budget"]}",
                          style: incomeTextTheme.displaySmall,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height(6.5)),
                          child: Text(widget.listBuilder[index]["time"],
                            style: AppThemes.lightTheme.textTheme.labelSmall,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
