import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/drawer_and_cart.dart';
import 'package:ecome/utils/widgets/text_field.dart';
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
                    "Welcome to Ecome ❤️",
                    style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subTextColor),
                  ),
                ],
              )),
          SizedBox(
            height: ScreenSize.deviceHeight * 0.02,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  isSearch: true,
                  labelText: "Search...",
                  controller: searchController,
                  isPassword: false,
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
