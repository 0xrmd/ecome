import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/add_review.dart';
import 'package:ecome/utils/widgets/back_button.dart';
import 'package:ecome/utils/widgets/single_product_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllReviews extends StatelessWidget {
  const AllReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: ArrowBackButton(
              icon: const Icon(Icons.arrow_back), onPressed: () {}),
          title: const Text(
            'Reviews',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.deviceHeight * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '245 Reviews',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            const Text(
                              '4.8',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              itemSize: 17,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 0.5),
                              itemBuilder: (context, _) => Image.asset(
                                'assets/icons/Star.png',
                                color: Colors.amber,
                                width: 13,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    const AddReview(),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenSize.deviceHeight * 0.03,
              ),
              SizedBox(
                height: ScreenSize.deviceHeight,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 55),
                      child: SingleReview(),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
