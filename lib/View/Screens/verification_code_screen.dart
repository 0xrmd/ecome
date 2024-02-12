import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/View/Widgets/bottom_action.dart';
import 'package:ecome/View/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAction(
        onPressed: () {},
        actionText: "Confirm Code",
        actionTextStyle: GoogleFonts.inter(
            color: AppColors.primaryColor,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: AppColors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                "Verification Code",
                style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Image.asset('assets/images/forget_password.jpg',
                height: ScreenSize.deviceHeight * 0.35,
                width: ScreenSize.deviceWidth * 0.9),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.02,
            ),
            VerificationCode(
              textStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).primaryColor),
              keyboardType: TextInputType.number,
              underlineColor: AppColors.backgroundColor,
              length: 4,
              cursorColor: Colors.blue,
              margin: const EdgeInsets.all(12),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            Center(
              child: TextButton(
                child: Text(
                  'Resend Confirmation Code.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      color: AppColors.subTextColor, fontSize: 13),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
