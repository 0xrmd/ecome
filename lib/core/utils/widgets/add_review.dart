import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:flutter/material.dart';

class AddReview extends StatelessWidget {
  final Function() onPressed;
  const AddReview({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: ScreenSize.screenHeight * 0.06,
        width: ScreenSize.screenWidth * 0.35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.orange, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Edit Square.png'),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Add Review',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
