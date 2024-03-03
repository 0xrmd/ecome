import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BottomAction extends StatelessWidget {
  const BottomAction(
      {super.key,
      required this.onPressed,
      this.normalText = '',
      required this.actionText,
      this.normalTextStyle = const TextStyle(color: AppColors.primaryColor),
      this.actionTextStyle = const TextStyle(color: AppColors.primaryColor)});
  final Function() onPressed;
  final String normalText;
  final String actionText;
  final TextStyle normalTextStyle;
  final TextStyle actionTextStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenSize.screenHeight * 0.1,
        decoration: const BoxDecoration(
          color: AppColors.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(normalText, style: normalTextStyle),
            TextButton(
              onPressed: onPressed,
              child: Text(actionText, style: actionTextStyle),
            ),
          ],
        ));
  }
}
