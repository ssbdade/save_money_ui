import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

import '../../../util/common/screen_util.dart';

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
          Container(
            color: red100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height(102), 0, 0),
                  child: Text("This Month",
                    style: AppThemes.lightTheme.textTheme.titleLarge,
                  ),
                ),
                const Spacer(
                  flex: 7,
                ),
                Text("You Spend 💸",
                  style: AppThemes.lightTheme.textTheme.headlineLarge,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text("\$300",
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
                          child: Text("and your biggest spending is from",
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
                                  color: yellow20,
                                  borderRadius: BorderRadius.circular(radius(8)),
                                ),
                                child: SvgPicture.asset(AppFileName.shoppingBag,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Shopping",
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
                          child: Text("\$ 120",
                            style: AppThemes.lightTheme.textTheme.headlineMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: violet100,
          )
        ],
      ),
    );
  }
}

