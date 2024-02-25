import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton(
      {super.key, required this.icon, required this.onPressed});
  final Widget icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        decoration: BoxDecoration(
          color: AppColors.buttonsColorGrey,
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(onPressed: onPressed, icon: icon));
  }
}
