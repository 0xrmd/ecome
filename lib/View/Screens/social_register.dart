import 'package:ecome/View/Widgets/social_login.dart';
import 'package:ecome/View/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/bottom_action.dart';

class SocialRegisterScreen extends StatelessWidget {
  const SocialRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomAction(
        onPressed: () {},
        actionText: "Sign Up",
        normalText: "Create an Account With Email?",
        normalTextColor: AppColors.primaryColor,
        actionTextColor: AppColors.textColor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: deviceWidth * 0.035,
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.buttonsColorGrey,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Text(
            "Let's get started",
            style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(" Quick Login with social account to\n continue",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.subTextColor.withOpacity(0.8),
              )),
          const SizedBox(
            height: 120,
          ),
          SocialLogin(
            text: 'Facebook',
            color: const Color(0xff4267B2),
            widget: const Icon(
              Icons.facebook,
              color: AppColors.primaryColor,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          SocialLogin(
            text: 'X',
            color: const Color.fromARGB(255, 1, 22, 35),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          SocialLogin(
            text: 'Google',
            color: const Color(0xffEA4335),
            widget: SvgPicture.asset(
              'assets/icons/google.svg',
              // ignore: deprecated_member_use
              color: AppColors.primaryColor,
              width: 25,
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: deviceHeight * 0.16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: AppColors.subTextColor,
                  )),
              TextButton(
                onPressed: () {},
                child: Text("Login",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: AppColors.textColor,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
