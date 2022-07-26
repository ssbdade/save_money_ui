import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

Widget incomeContainer(BuildContext context) {
  return Container(
    color: green100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, height(102), 0, 0),
          child: Text(LocaleKeys.thisMonth,
            style: AppThemes.lightTheme.textTheme.titleLarge,
          ),
        ),
        const Spacer(
          flex: 7,
        ),
        Text(LocaleKeys.youEarned,
          style: AppThemes.lightTheme.textTheme.headlineLarge,
        ),
        const Spacer(
          flex: 1,
        ),
        Text(LocaleKeys.totalEarned,
          style: AppThemes.lightTheme.textTheme.displayLarge,
        ),
        const Spacer(
          flex: 6,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width(16), 0, width(16), height(50)),
          child: Container(
            height: height(231),
            width: width(343),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(radius(24)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(width(32), height(16), width(32), 0),
                  child: Text(LocaleKeys.biggestIncome,
                    textAlign: TextAlign.center,
                    style: AppThemes.lightTheme.textTheme.titleMedium,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Container(
                  height: height(64),
                  width: width(156),
                  decoration: BoxDecoration(
                    color: light40,
                    borderRadius: BorderRadius.circular(radius(24)),
                    border: Border.all(width: width(1),
                      color: light20,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: height(32),
                        width: width(32),
                        decoration: BoxDecoration(
                          color: green20,
                          borderRadius: BorderRadius.circular(radius(8)),
                        ),
                        child: SvgPicture.asset(AppFileName.salaryBag,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(LocaleKeys.salary,
                        style: AppThemes.lightTheme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, height(27)),
                  child: Text(LocaleKeys.salaryMoney,
                    style: AppThemes.lightTheme.textTheme.headlineMedium,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}