import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:save_money_ui/modules/detail/controller/detail_page_controller.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';
import 'package:sliding_switch/sliding_switch.dart';

class AppSlidingSwitch extends StatefulWidget {
  const AppSlidingSwitch({Key? key}) : super(key: key);

  @override
  State<AppSlidingSwitch> createState() => _AppSlidingSwitchState();
}

class _AppSlidingSwitchState extends State<AppSlidingSwitch> {
  DetailPageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SlidingSwitch(
      width: width(342),
      height: height(56),
      value: false,
      onChanged: (value) {
        controller.isIncome.value = value;
      },
      onTap: () {
      },
      onDoubleTap: () {},
      onSwipe: () {},
      textOn: LocaleKeys.income,
      textOff: LocaleKeys.expense,
      colorOn: light80,
      colorOff: light80,
      background: const Color(0xffe4e5eb),
      buttonColor: violet100,
      inactiveColor: black,
    );
  }
}

