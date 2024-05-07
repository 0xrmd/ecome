import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:flutter/material.dart';

class DrawerCartWidget extends StatelessWidget {
  final Widget firstIcon;
  final Widget secondIcon;
  final Function() firstIconOnPressed;
  final Function() secondIconOnPressed;

  const DrawerCartWidget({
    super.key,
    required this.firstIcon,
    required this.secondIcon,
    required this.firstIconOnPressed,
    required this.secondIconOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenSize.screenWidth * 0.005,
        vertical: ScreenSize.screenHeight * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.buttonsColorGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(onPressed: firstIconOnPressed, icon: firstIcon),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.buttonsColorGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: secondIconOnPressed,
              icon: secondIcon,
            ),
          )
        ],
      ),
    );
  }
}
