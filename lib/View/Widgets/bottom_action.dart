import 'package:ecome/View/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomAction extends StatelessWidget {
  const BottomAction(
      {super.key,
      required this.onPressed,
      this.normalText = '',
      required this.actionText,
      this.normalTextColor = AppColors.primaryColor,
      required this.actionTextColor});
  final Function() onPressed;
  final String normalText;
  final String actionText;

  final Color normalTextColor;
  final Color actionTextColor;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
        height: deviceHeight * 0.1,
        decoration: const BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              normalText,
              style: GoogleFonts.inter(
                fontSize: 16,
                color: normalTextColor,
              ),
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                actionText,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: actionTextColor,
                ),
              ),
            ),
          ],
        ));
  }
}
