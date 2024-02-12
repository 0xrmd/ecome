import 'package:ecome/View/Widgets/custom_buttton.dart';
import 'package:ecome/View/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardWidget extends StatelessWidget {
  const OnBoardWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: deviceHeight * 0.30,
            width: deviceWidth * 0.95,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                Text(
                  "Look Good, Feel Good",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Text(
                  "Create your individual & unique style and\n look amazing everyday.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColors.subTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //* Men Button
                    CustomButton(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                      text: 'Login',
                      color: const Color.fromARGB(255, 192, 194, 196),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: deviceWidth * 0.05,
                    ),
                    // Woman Button
                    CustomButton(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                      text: 'Sign Up',
                      color: AppColors.backgroundColor,
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceHeight * 0.007,
                ),
                TextButton(
                  child: Text(
                    "Social Login? Click here",
                    style: GoogleFonts.inter(
                        color: AppColors.subTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SocialLoginScreen');
                  },
                ),
              ],
            ))
      ],
    );
  }
}
