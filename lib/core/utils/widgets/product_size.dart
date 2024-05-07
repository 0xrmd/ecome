import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({super.key, required this.size});
  final String size;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: ScreenSize.screenHeight * 0.08,
      width: ScreenSize.screenWidth * 0.17,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5)),
      child: Text(size,
          style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor)),
    );
  }
}
