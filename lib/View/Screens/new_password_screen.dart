import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/View/Widgets/bottom_action.dart';
import 'package:ecome/View/Widgets/text_field.dart';
import 'package:ecome/View/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.text.trim();
    confirmPasswordController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAction(
        onPressed: () {},
        actionText: "Reset Password",
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
              height: ScreenSize.deviceHeight * 0.06,
            ),
            Row(
              children: [
                SizedBox(
                  width: ScreenSize.deviceWidth * 0.035,
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
              height: ScreenSize.deviceHeight * 0.005,
            ),
            Center(
              child: Text(
                "New Password",
                style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text("Password",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: AppColors.textColor,
                  )),
            ),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  labelText: 'Password',
                  controller: passwordController,
                  isPassword: false,
                  keyboardType: TextInputType.visiblePassword,
                )),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text("Confirm Password",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: AppColors.textColor,
                  )),
            ),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  labelText: 'Confirm Password',
                  controller: confirmPasswordController,
                  isPassword: false,
                  keyboardType: TextInputType.visiblePassword,
                )),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.02,
            ),
            Center(
              child: Text(
                'Please write your new password.',
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
