import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/bottom_action.dart';
import 'package:ecome/utils/widgets/drawer_and_cart.dart';
import 'package:ecome/utils/widgets/product_size.dart';
import 'package:ecome/utils/widgets/single_product_review.dart';
import 'package:ecome/utils/widgets/sub_product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonsColorGrey,
      bottomNavigationBar: BottomAction(
        onPressed: () {},
        actionText: 'Add to Cart',
        actionTextStyle:
            GoogleFonts.inter(fontSize: 17, color: AppColors.primaryColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: ScreenSize.deviceHeight * 0.02,
          ),
          Stack(children: [
            Container(
              height: ScreenSize.deviceHeight * 0.6,
              width: ScreenSize.deviceWidth,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i0.wp.com/cosmosalgerie.com/wp-content/uploads/2024/01/1-5.png?fit=750%2C900&ssl=1"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              left: 15,
              right: 15,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: DrawerCartWidget(
                  firstIcon: const Icon(Icons.arrow_back),
                  secondIcon: SvgPicture.asset("assets/icons/Cart.svg"),
                  firstIconOnPressed: () {},
                  secondIconOnPressed: () {},
                  context: context,
                ),
              ),
            ),
          ]),
          SizedBox(
            height: ScreenSize.deviceHeight * 0.01,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenSize.deviceWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //? Product Category
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Unisex Snickers",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTextColor)),
                        Text("Price",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTextColor)),
                      ],
                    ),
                    //? Product Name
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sneakers Cairo",
                            style: GoogleFonts.inter(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor)),
                        Text("4600 DZD",
                            style: GoogleFonts.inter(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor)),
                      ],
                    ),
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.02,
                    ),
                    //? Product Images
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.15,
                      width: ScreenSize.deviceWidth,
                      child: ListView(
                        physics: const PageScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          SubProductImage(
                              imageUrl:
                                  "https://i0.wp.com/cosmosalgerie.com/wp-content/uploads/2024/01/3-4.png?fit=750%2C900&ssl=1",
                              onPressed: () {
                                setState(() {});
                              }),
                          SubProductImage(
                              imageUrl:
                                  "https://i0.wp.com/cosmosalgerie.com/wp-content/uploads/2024/01/2-4.png?resize=430%2C516&ssl=1",
                              onPressed: () {
                                setState(() {});
                              }),
                          SubProductImage(
                              imageUrl:
                                  "https://i0.wp.com/cosmosalgerie.com/wp-content/uploads/2024/01/1-5.png?fit=750%2C900&ssl=1",
                              onPressed: () {
                                setState(() {});
                              }),
                          SubProductImage(
                              imageUrl:
                                  "https://i0.wp.com/cosmosalgerie.com/wp-content/uploads/2024/01/1-5.png?fit=750%2C900&ssl=1",
                              onPressed: () {
                                setState(() {});
                              }),
                        ],
                      ),
                    ),

                    //? Product Size
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Size",
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor)),
                        TextButton(
                          onPressed: () {},
                          child: Text("Size Guid",
                              style: GoogleFonts.inter(
                                  fontSize: 15, color: AppColors.subTextColor)),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.08,
                      width: ScreenSize.deviceWidth,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ProductSize(
                            size: "S",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ProductSize(
                            size: "M",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ProductSize(
                            size: "L",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ProductSize(
                            size: "XL",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ProductSize(
                            size: "2XL",
                          ),
                        ],
                      ),
                    ),
                    //? Product Description
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.02,
                    ),
                    Text("Description",
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor)),
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.01,
                    ),
                    // ? Product Description
                    SizedBox(
                      width: ScreenSize.deviceWidth,
                      child: ReadMoreText(
                        "Plongez au cœur de l’essence vibrante de l’Afrique avec notre collection exclusive célébrant la passion du football lors de la Coupe d’Afrique 2024. Inspirée par la richesse culturelle et la diversité du continent, chaque pièce incarne l’énergie effervescente et la vivacité des nations africaines.",
                        trimLines: 3,
                        colorClickableText: AppColors.textColor,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        style: GoogleFonts.inter(
                            fontSize: 15, color: AppColors.subTextColor),
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.02,
                    ),
                    // ? Product Reviews
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reviews",
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor)),
                        TextButton(
                          onPressed: () {},
                          child: Text("View All",
                              style: GoogleFonts.inter(
                                  fontSize: 15, color: AppColors.subTextColor)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.01,
                    ),
                    //* Product Single Review
                    SizedBox(
                      width: ScreenSize.deviceWidth,
                      child: const SingleReview(),
                    ),
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Price",
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor)),
                        Text("4600 DZD",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor)),
                      ],
                    ),
                    SizedBox(
                      height: ScreenSize.deviceHeight * 0.01,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
