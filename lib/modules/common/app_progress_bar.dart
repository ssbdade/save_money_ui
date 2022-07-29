import 'package:flutter/material.dart';
import 'package:save_money_ui/util/common/screen_util.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';

class AppProgressBar extends StatelessWidget {
  const AppProgressBar({Key? key, this.height, this.progressWidth, this.backgroundColor, this.progressColor}) : super(key: key);
  final double? height;
  final double? progressWidth;
  final Color? backgroundColor;
  final Color? progressColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius(height!)),
              color: backgroundColor,
            ),
          ),
          Container(
            height: height,
            width: progressWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius(height!)),
              color: progressColor,
            ),
          )
        ],
      ),
    );
  }
}



