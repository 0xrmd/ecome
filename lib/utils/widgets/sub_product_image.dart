import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SubProductImage extends StatelessWidget {
  final String imageUrl;
  final Function() onPressed;
  const SubProductImage(
      {super.key, required this.imageUrl, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: ScreenSize.screenHeight * 0.15,
        width: ScreenSize.screenWidth * 0.3,
        margin: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.03),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(imageUrl))),
      ),
    );
  }
}
