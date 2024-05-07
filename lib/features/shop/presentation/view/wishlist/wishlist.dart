import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:ecome/core/utils/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class WishList extends StatelessWidget {
  WishList({super.key});
  List<Product> items = [
    const Product(
        productImage: 'assets/images/product_1.png',
        productName: 'Veste Nike',
        productPrice: '22'),
    const Product(
        productImage: 'assets/images/product_1.png',
        productName: 'Trail Running Jacket Nike Windrunner',
        productPrice: '26'),
    const Product(
        productImage: 'assets/images/product_1.png',
        productName: 'Nike Sportswear Club Fleece',
        productPrice: '65'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: ScreenSize.screenHeight * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.buttonsColorGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            Text("Wishlist",
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.w600)),
            Container(
              decoration: BoxDecoration(
                color: AppColors.buttonsColorGrey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  icon: SvgPicture.asset("assets/icons/Cart.svg")),
            ),
          ]),
        ),
        SizedBox(
          height: ScreenSize.screenHeight * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("500 Items",
                      style: GoogleFonts.inter(
                          fontSize: 17, fontWeight: FontWeight.w500)),
                  Text("in wishlist",
                      style: GoogleFonts.inter(
                          fontSize: 15, color: AppColors.softGrey)),
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  height: ScreenSize.screenHeight * 0.06,
                  width: ScreenSize.screenWidth * 0.22,
                  decoration: BoxDecoration(
                    color: AppColors.buttonsColorGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_note,
                          color: AppColors.textColor,
                          size: 25,
                        ),
                      ),
                      Text(
                        "Edit",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          height: ScreenSize.screenHeight * 0.02,
        ),
        Expanded(
          flex: 1,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in a row
              childAspectRatio: 1 / 2, // ratio of item width to height
              crossAxisSpacing: 1, // spacing between items horizontally
              mainAxisSpacing: 1 / 2, // spacing between items vertically
            ),
            itemCount: items.length, // replace with your number of items
            itemBuilder: (ctx, i) => GridTile(child: items[i]),
          ),
        ),
      ],
    ));
  }
}
