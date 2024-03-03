import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.deviceHeight,
      required this.deviceWidth,
      required this.text,
      this.onTap,
      this.color,
      this.textColor});
  final double deviceHeight;
  final double deviceWidth;
  final Function()? onTap;
  Color? textColor = Colors.white;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: deviceHeight * 0.075,
        width: deviceWidth * 0.32,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
