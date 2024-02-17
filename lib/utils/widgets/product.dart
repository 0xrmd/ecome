import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 8, right: 5, bottom: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: ScreenSize.deviceHeight * 0.35,
              width: ScreenSize.deviceWidth * 0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/product_1.png",
                    ),
                    fit: BoxFit.cover),
              ),
              child: null,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nike Sportswear Club Fleece",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$69,55",
                    style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
