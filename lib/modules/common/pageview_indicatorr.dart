import 'package:flutter/material.dart';
import 'package:save_money_ui/modules/report/views/financial_report_pageview/expense.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';
import '../../util/theme/app_colors.dart';

class PageViewWithDot extends StatefulWidget {
  const PageViewWithDot( {Key? key,}) : super(key: key);

  @override
  State<PageViewWithDot> createState() => _PageViewWithDotState();
}

class _PageViewWithDotState extends State<PageViewWithDot> {

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        expenseContainer(context),
        Container(
          color: green100,
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
              Text("You Earned 💰",
                style: AppThemes.lightTheme.textTheme.headlineLarge,
              ),
              const Spacer(
                flex: 1,
              ),
              Text("\$6000",
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
                        child: Text("your biggest Income is from",
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
                              child: Image.asset(AppFileName.shoppingBag,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text("Salary",
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
                        child: Text("\$ 5000",
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
          color: violet100,
        )
      ],
    );
  }
}

class DotIndex extends StatelessWidget {
  const DotIndex({Key? key, required this.isHighLight}) : super(key: key);
  final bool isHighLight;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 2,
      width: 5,
      color: isHighLight ? Colors.white : Colors.black,
    );
  }
}


Widget buildImage(String urlImage, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        urlImage,
        fit: BoxFit.fill,
        width: 800,
      ),
    ),
  );
}
