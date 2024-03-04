import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProductInCart extends StatelessWidget {
  final Color? color;
  const SingleProductInCart({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.1),
            spreadRadius: 1.4,
            blurRadius: 1,
          ),
        ],
      ),
      height: ScreenSize.screenHeight * 0.25,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Image.asset(
            productImg,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: ScreenSize.screenWidth * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenSize.screenWidth * 0.07,
              ),
              SizedBox(
                width: ScreenSize.screenWidth * 0.5,
                child: Text(
                  "Men's Tie-Dye T-Shirt Nike Sportswear",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.01,
              ),
              const Text("\$1200"),
              SizedBox(
                height: ScreenSize.screenHeight * 0.01,
              ),
              SizedBox(
                width: ScreenSize.screenWidth * 0.5,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: const Color(0xffDEDEDE))),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/arrow-up.png",
                          width: 20,
                          height: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenSize.screenWidth * 0.03,
                    ),
                    Text(
                      "2",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: ScreenSize.screenWidth * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: const Color(0xffDEDEDE))),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/arrow-down.png",
                            width: 20,
                            height: 25,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
