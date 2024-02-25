import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class SingleReview extends StatefulWidget {
  const SingleReview({super.key});

  @override
  State<SingleReview> createState() => _SingleReviewState();
}

class _SingleReviewState extends State<SingleReview> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/lego/4.jpg',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenSize.deviceWidth * 0.8,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Mohamed Rami',
                          style: GoogleFonts.inter(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          '4.5 Rating',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: AppColors.softGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.deviceHeight * 0.006,
                ),
                SizedBox(
                  width: ScreenSize.deviceWidth * 0.8,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/clock.png',
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                              style: GoogleFonts.inter(
                                fontSize: 12.5,
                                color: AppColors.softGrey,
                              ),
                            ),
                          ],
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
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: ScreenSize.deviceHeight * 0.015,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: ScreenSize.deviceWidth,
          child: SizedBox(
            width: ScreenSize.deviceWidth,
            child: ReadMoreText(
              "Faut réviser vos desings la qualité est au rendez-vous mais la conception faut mettre un peu plus de créativité, bon courage",
              trimLines: 3,
              colorClickableText: AppColors.textColor,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Read less',
              style: GoogleFonts.inter(
                  fontSize: 15, color: AppColors.subTextColor),
            ),
          ),
        ),
      ),
    ]);
  }
}
