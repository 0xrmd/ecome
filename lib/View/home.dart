import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/categorie.dart';
import 'package:ecome/utils/widgets/drawer_and_cart.dart';
import 'package:ecome/utils/widgets/product.dart';
import 'package:ecome/utils/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: ScreenSize.deviceHeight * 0.01,
            ),
            DrawerCartWidget(
              context: context,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello",
                        style: GoogleFonts.inter(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    Text(
                      "Welcome to Ecome.",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTextColor),
                    ),
                  ],
                )),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.02,
            ),
            SearchInput(searchController: searchController),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.001,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.inter(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: GoogleFonts.inter(
                          fontSize: 13, color: AppColors.subTextColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.01,
            ),
            SizedBox(
              height: 60,
              child: Flexible(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Category(
                      onTap: () {},
                      categoryName: 'Adidas',
                      imageUrl: 'assets/images/Adidas.png',
                    ),
                    Category(
                      categoryName: 'Nike',
                      imageUrl: 'assets/images/nike.png',
                      onTap: () {},
                    ),
                    Category(
                      categoryName: 'Nike',
                      imageUrl: 'assets/images/nike.png',
                      onTap: () {},
                    ),
                    Category(
                      categoryName: 'Nike',
                      imageUrl: 'assets/images/nike.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: GoogleFonts.inter(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: GoogleFonts.inter(
                          fontSize: 13, color: AppColors.subTextColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize.deviceHeight * 0.45,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Product(),
                    Product(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
