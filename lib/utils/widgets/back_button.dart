import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.color = AppColors.buttonsColorGrey});
  final Widget icon;
  final Function() onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(onPressed: onPressed, icon: icon));
  }
}
