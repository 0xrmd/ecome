import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:ecome/core/utils/widgets/bottom_action.dart';
import 'package:ecome/core/utils/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.text.trim();
    emailController.text.trim();
  }

  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAction(
        onPressed: () {},
        normalText: 'By signing up you agree to our',
        actionText: "Terms and Conditions",
        actionTextStyle: GoogleFonts.inter(
            color: AppColors.primaryColor,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: AppColors.primaryColor),
        normalTextStyle: GoogleFonts.inter(
          color: AppColors.primaryColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          textDirection: TextDirection.rtl,
          color: AppColors.primaryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            const Center(
              child: Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.005,
            ),
            Center(
              child: Text("Please Enter Your Data To Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                  )),
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.05,
            ),
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
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String) {}
                )),
            SizedBox(
              height: ScreenSize.screenHeight * 0.02,
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
              height: ScreenSize.screenHeight * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  isSearch: false,
                  labelText: 'Password',
                  controller: passwordController,
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword, onChanged: (String ) {  },
                )),
            SizedBox(
              height: ScreenSize.screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Colors.black,
                            letterSpacing: 0.5))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Remember me",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: AppColors.textColor,
                      )),
                  Checkbox.adaptive(
                    value: _isChecked,
                    onChanged: (changed) {
                      setState(() {
                        _isChecked = changed;
                      });
                    },
                    activeColor: AppColors.checkboxColorGreen,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
