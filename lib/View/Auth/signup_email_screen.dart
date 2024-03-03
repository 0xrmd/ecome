import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/bottom_action.dart';
import 'package:ecome/utils/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    userNameController.text.trim();
    passwordController.text.trim();
    emailController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAction(
          onPressed: () {},
          actionText: "Sign Up",
          actionTextStyle: const TextStyle(color: AppColors.primaryColor),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
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
                  "Sign Up",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.02,
              ),
              Text("Sign Up With Email to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                  )),
              SizedBox(
                height: ScreenSize.screenHeight * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Text("UserName",
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
                    labelText: 'UserName',
                    controller: userNameController,
                    isPassword: false,
                    keyboardType: TextInputType.name,
                  )),
              SizedBox(
                height: ScreenSize.screenHeight * 0.03,
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
                    keyboardType: TextInputType.visiblePassword,
                  )),
              SizedBox(
                height: ScreenSize.screenHeight * 0.03,
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
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomTextField(
                    isSearch: false,
                    labelText: 'Email Address',
                    controller: emailController,
                    isPassword: false,
                    keyboardType: TextInputType.emailAddress,
                  )),
              SizedBox(
                height: ScreenSize.screenHeight * 0.03,
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
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
