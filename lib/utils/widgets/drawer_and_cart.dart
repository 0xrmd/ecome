import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerCartWidget extends StatelessWidget {
  final BuildContext context;
  final Widget firstIcon;
  final Widget secondIcon;
  final Function() firstIconOnPressed;
  final Function() secondIconOnPressed;
  const DrawerCartWidget({
    super.key,
    required this.context,
    required this.firstIcon,
    required this.secondIcon,
    required this.firstIconOnPressed,
    required this.secondIconOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.deviceWidth * 0.005,
          vertical: ScreenSize.deviceHeight * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: firstIcon, onPressed: firstIconOnPressed),
          IconButton(
            icon: secondIcon,
            onPressed: secondIconOnPressed,
          ),
        ],
      ),
    );
  }
}
