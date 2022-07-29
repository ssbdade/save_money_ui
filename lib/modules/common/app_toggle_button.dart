import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';

class AppToggleButton extends StatefulWidget {
  const AppToggleButton({Key? key}) : super(key: key);

  @override
  State<AppToggleButton> createState() => _AppToggleButtonState();
}

class _AppToggleButtonState extends State<AppToggleButton> {

  @override
  Widget build(BuildContext context) {
    DetailPageController controller = Get.find();
    return ToggleButtons(
        isSelected: controller.isSelected,
        onPressed: (int index) {
          setState(() {
            for (int buttonIndex = 0;
            buttonIndex < controller.isSelected.length;
            buttonIndex++) {
              if (buttonIndex == index) {
                controller.isSelected[buttonIndex] = true;
              } else {
                controller.isSelected[buttonIndex] = false;
              }
            }
          });
        },
        fillColor: violet100,
        borderRadius: BorderRadius.circular(radius(8)),
        children: [
          SvgPicture.asset(AppFileName.lineChart,
            color: controller.isSelected[0] ? white : violet100,
          ),
          SvgPicture.asset(AppFileName.pieChart,
            color: controller.isSelected[1] ? white : violet100,
          ),
        ]);
  }
}
