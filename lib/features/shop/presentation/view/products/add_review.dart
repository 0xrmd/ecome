import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:ecome/core/utils/widgets/back_button.dart';
import 'package:ecome/core/utils/widgets/bottom_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  double? rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAction(
        onPressed: () {},
        actionText: 'Submit Review',
      ),
      appBar: AppBar(
        elevation: 0,
        leading: ArrowBackButton(
            icon: const Icon(Icons.arrow_back), onPressed: () {}),
        title: const Text(
          'Add Review',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenSize.screenHeight * 0.05,
              ),
              Text(
                "Name",
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.buttonsColorGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Type your name',
                    contentPadding: EdgeInsets.only(left: 15),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "How was your experience ?",
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                height: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.buttonsColorGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  maxLines: null,
                  expands: true,
                  minLines: null,
                  decoration: const InputDecoration(
                    hintText: 'Describe your experience ',
                    contentPadding: EdgeInsets.only(left: 15, top: 15),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.05,
              ),
              Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor),
                  ),
                  SizedBox(
                    width: ScreenSize.screenWidth * 0.015,
                  ),
                  const Text(
                    "Star",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.subTextColor),
                  ),
                ],
              ),
              Center(
                child: RatingBar(
                  initialRating: 0.5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  minRating: 1,
                  maxRating: 5,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                    full: const Icon(Icons.star, color: Colors.yellow),
                    half: const Icon(Icons.star_half, color: Colors.yellow),
                    empty: const Icon(Icons.star, color: Colors.grey),
                  ),
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  onRatingUpdate: (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
