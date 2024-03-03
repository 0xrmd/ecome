import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/categorie.dart';
import 'package:ecome/utils/widgets/drawer.dart';
import 'package:ecome/utils/widgets/drawer_and_cart.dart';
import 'package:ecome/utils/widgets/product.dart';
import 'package:ecome/utils/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //* This is For Controller of the Search Input
  TextEditingController searchController = TextEditingController();
  //* This is for the List of Products

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
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: ScreenSize.screenHeight * 0.01,
              ),
              DrawerCartWidget(
                context: context,
                firstIcon: SvgPicture.asset("assets/icons/Menu.svg"),
                secondIcon: SvgPicture.asset("assets/icons/Cart.svg"),
                firstIconOnPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                secondIconOnPressed: () {},
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
                height: ScreenSize.screenHeight * 0.02,
              ),
              SearchInput(searchController: searchController),
              SizedBox(
                height: ScreenSize.screenHeight * 0.001,
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
                height: ScreenSize.screenHeight * 0.01,
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
                height: ScreenSize.screenHeight * 0.02,
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
          ),
        ));
  }
}
