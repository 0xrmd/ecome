import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:ecome/core/utils/widgets/bottom_action.dart';
import 'package:ecome/core/utils/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAction(
        onPressed: () {},
        actionText: "Send Confirmation Code",
        actionTextStyle: GoogleFonts.inter(
            color: AppColors.primaryColor,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: AppColors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenSize.screenHeight * 0.06,
            ),
            Row(
              children: [
                SizedBox(
                  width: ScreenSize.screenWidth * 0.035,
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
            SizedBox(
              height: ScreenSize.screenHeight * 0.005,
            ),
            Center(
              child: Text(
                "Reset Password",
                style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Image.asset('assets/images/forget_password.jpg',
                height: ScreenSize.screenHeight * 0.35,
                width: ScreenSize.screenWidth * 0.9),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text("Email Address",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: AppColors.textColor,
                  )),
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  isSearch: false,
                  labelText: 'Email Address',
                  controller: emailController,
                  isPassword: false,
                  keyboardType: TextInputType.emailAddress, onChanged: (String ) {  },
                )),
            SizedBox(
              height: ScreenSize.screenHeight * 0.02,
            ),
            Center(
              child: Text(
                'Please write your email to receive a confirmation code to\n set a new password.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: AppColors.subTextColor, fontSize: 12.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
