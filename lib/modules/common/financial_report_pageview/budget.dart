import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

Widget budgetContainer(BuildContext context) {
  return Container(
    color: violet100,
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

        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width(16)),
          child: Text(LocaleKeys.twoOf12Budget,
            style: AppThemes.lightTheme.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: [
            Container(
              height: height(64),
              decoration: BoxDecoration(
                color: light40,
                borderRadius: BorderRadius.circular(radius(24)),

              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height(32),
                      width: width(32),
                      decoration: BoxDecoration(
                        color: yellow20,
                        borderRadius: BorderRadius.circular(radius(8)),
                      ),
                      child: SvgPicture.asset(AppFileName.shoppingBag,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(LocaleKeys.shopping,
                      style: AppThemes.lightTheme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}