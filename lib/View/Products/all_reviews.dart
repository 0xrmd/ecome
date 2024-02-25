import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/drawer_and_cart.dart';
import 'package:flutter/material.dart';

class AllReviews extends StatelessWidget {
  const AllReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ScreenSize.deviceHeight * 0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: ScreenSize.deviceWidth * 0.015,
              ),
              DrawerCartWidget(
                context: context,
                firstIcon: const Icon(Icons.arrow_back),
                firstIconOnPressed: () {},
                secondIconOnPressed: () {},
                secondIcon: Container(),
              ),
              SizedBox(
                width: ScreenSize.deviceWidth * 0.14,
              ),
              const Text(
                'Reviews',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
