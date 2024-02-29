import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProductInCart extends StatelessWidget {
  const SingleProductInCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ScreenSize.deviceWidth,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.asset(productImg),
          SizedBox(
            width: ScreenSize.deviceWidth * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: ScreenSize.deviceWidth * 0.5,
                child: Text(
                  "Men's Tie-Dye T-Shirt Nike Sportswear",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text("\$45 (-\$4.00 Tax)"),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove),
                  ),
                  const Text("2"),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
