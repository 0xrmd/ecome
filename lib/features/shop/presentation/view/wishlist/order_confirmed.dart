import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:ecome/core/utils/widgets/back_button.dart';
import 'package:ecome/core/utils/widgets/bottom_action.dart';
import 'package:ecome/core/utils/widgets/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAction(
        onPressed: () {},
        actionText: 'Continue Shopping',
      ),
      appBar: AppBar(
        elevation: 0,
        leading: ArrowBackButton(
            icon: const Icon(Icons.arrow_back), onPressed: () {}),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: ScreenSize.screenWidth,
              height: ScreenSize.screenHeight * 0.5,
              child: Stack(
                children: [
                  Center(
                    child:
                        Image.asset("assets/images/order-done-background.png"),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/order_confirmed.png",
                      )),
                ],
              ),
            ),
            Text(
              'Order Confirmed!',
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Your order has been confirmed, we will send you confirmation email shortly.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.07,
            ),
            CustomButton(
              deviceHeight: ScreenSize.screenHeight,
              deviceWidth: ScreenSize.screenWidth * 3,
              text: 'Go to Orders',
              color: AppColors.buttonsColorGrey,
              textColor: AppColors.subTextColor,
              onTap: () {},
            ),
          ],
        ),
      ]),
    );
  }
}
