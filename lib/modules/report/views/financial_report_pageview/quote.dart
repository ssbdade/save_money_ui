import 'package:flutter/widgets.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

Widget quoteContainer(BuildContext context) {
  return Container(
    color: violet100,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: width(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, height(201), 0, height(14)),
            child: Text(LocaleKeys.financialFreedom,
              style: AppThemes.lightTheme.textTheme.headlineLarge,
              textAlign: TextAlign.start,
            ),
          ),
          Text(LocaleKeys.RobertKiyosaki,
            style: AppThemes.lightTheme.textTheme.displayMedium,
            textAlign: TextAlign.start,
          ),
          const Spacer(

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height(50)),
            child: Container(
              height: height(56),
              decoration: BoxDecoration(
                color: light100,
                borderRadius: BorderRadius.circular(radius(16)),
              ),
              child: Center(
                child: Text(
                    LocaleKeys.seeFullDetail,
                  style: AppThemes.lightTheme.textTheme.displaySmall,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}