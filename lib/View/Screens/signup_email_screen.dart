import 'package:ecome/View/Widgets/bottom_action.dart';
import 'package:ecome/View/Widgets/text_field.dart';
import 'package:ecome/View/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return Scaffold(
        bottomNavigationBar: BottomAction(
          onPressed: () {},
          actionText: "Sign Up",
          actionTextColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text("Sign Up With Email to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    labelText: 'UserName',
                    controller: userNameController,
                    isPassword: false,
                  )),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    labelText: 'Password',
                    controller: passwordController,
                    isPassword: true,
                  )),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    labelText: 'Email Address',
                    controller: emailController,
                    isPassword: false,
                  )),
              SizedBox(
                height: deviceHeight * 0.03,
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
                    Checkbox(
                      value: true,
                      onChanged: (changed) {},
                      activeColor: Colors.deepPurpleAccent,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
