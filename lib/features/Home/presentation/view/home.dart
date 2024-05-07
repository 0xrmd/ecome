import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:ecome/core/utils/widgets/categorie.dart';
import 'package:ecome/core/utils/widgets/drawer.dart';
import 'package:ecome/core/utils/widgets/drawer_and_cart.dart';
import 'package:ecome/core/utils/widgets/product.dart';
import 'package:ecome/core/utils/widgets/search_input.dart';
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
  @override
  dispose() {
    searchController.dispose();
    super.dispose();
  }

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            toolbarHeight: 400,
            floating: true,
            snap: true,
            leading: const SizedBox(),
            backgroundColor: Colors.white,
            title: AppHeader(searchController: searchController),
          ),
          SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in a row
                childAspectRatio: 1 / 2, // ratio of item width to height
                crossAxisSpacing: 1, // spacing between items horizontally
                mainAxisSpacing: 1 / 2, // spacing between items vertically
              ),
              itemCount: items.length,
              itemBuilder: (ctx, i) => GridTile(child: items[i])),
        ],
      ),
    );
  }
}

class AppHeader extends StatefulWidget {
  final TextEditingController searchController;
  const AppHeader({super.key, required this.searchController});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  @override
  void dispose() {
    super.dispose();
    if (!mounted) {
      widget.searchController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenSize.screenHeight * 0.01,
        ),
        Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: DrawerCartWidget(
              firstIcon: SvgPicture.asset("assets/icons/Menu.svg"),
              secondIcon: SvgPicture.asset("assets/icons/Cart.svg"),
              firstIconOnPressed: () {
                Scaffold.of(context).openDrawer();
              },
              secondIconOnPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
          );
        }),
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
        SearchInput(
          searchController: widget.searchController,
          onChanged: (value) {},
          onMicPressed: () {},
        ),
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
      ],
    );
  }
}
