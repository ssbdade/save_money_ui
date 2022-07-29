import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:save_money_ui/util/theme/app_theme.dart';

class AppTaskBar extends StatefulWidget {
  const AppTaskBar({Key? key}) : super(key: key);

  @override
  State<AppTaskBar> createState() => _AppTaskBarState();
}

class _AppTaskBarState extends State<AppTaskBar> {
  DetailPageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width(16), vertical: height(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Directionality(
              textDirection: TextDirection.rtl,
              child: Obx(
                () => DropdownButton2(
                  alignment: Alignment.center,
                  buttonWidth:
                      controller.dropdownValue.value == LocaleKeys.transaction
                          ? width(125)
                          : width(118),
                  value: controller.dropdownValue.value,
                  style: AppThemes.lightTheme.textTheme.bodySmall,
                  buttonHeight: height(40),
                  buttonPadding:
                      EdgeInsets.only(left: width(10), right: width(16)),
                  buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius(40)),
                      border: Border.all(
                        color: light60,
                        width: 1,
                      )),
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue) {
                    controller.dropdownValue.value = newValue!;
                  },
                  items: <String>[LocaleKeys.transaction, LocaleKeys.category]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  icon: SvgPicture.asset(AppFileName.arrowDown2),
                ),
              )),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius(8)),
              border: Border.all(
                width: 1,
                color: light60,
              )
            ),
            child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(AppFileName.sorted, fit: BoxFit.scaleDown,)),
          ),
        ],
      ),
    );
  }
}
