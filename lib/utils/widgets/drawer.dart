import 'dart:ui';

import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: ScreenSize.screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/close_menu.svg",
                    ),
                    onPressed: () {
                      Scaffold.of(context).closeDrawer();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/men/9.jpg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mohamed Rami',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor),
                    ),
                    Row(
                      children: [
                        Text(
                          'Verified Profile',
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.subTextColor),
                        ),
                        SvgPicture.asset(
                          'assets/icons/verified.svg',
                          height: 20,
                          width: 20,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenSize.screenWidth * 0.04,
                ),
                SvgPicture.asset("assets/icons/dark_mode.svg"),
                const SizedBox(width: 10),
                Text("Dark Mode", style: GoogleFonts.inter(fontSize: 16)),
                SizedBox(
                  width: ScreenSize.screenWidth * 0.25,
                ),
                Switch(
                  value: checkedValue,
                  onChanged: (value) {
                    setState(() {
                      checkedValue = value;
                      value = !value;
                    });
                  },
                  activeColor: AppColors.primaryColor,
                  activeTrackColor: AppColors.checkboxColorGreen,
                ),
              ],
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.01,
            ),
            ListTile(
              title: const Text('Account Information'),
              leading: SvgPicture.asset("assets/icons/Info.svg"),
              onTap: () {},
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.01,
            ),
            ListTile(
              title: const Text('Password'),
              leading: SvgPicture.asset("assets/icons/Lock.svg"),
              onTap: () {},
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.01,
            ),
            ListTile(
              title: const Text('Orders'),
              leading: SvgPicture.asset("assets/icons/Bag.svg"),
              onTap: () {},
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.01,
            ),
            ListTile(
              title: const Text('Whishlist'),
              leading: SvgPicture.asset("assets/icons/Heart.svg"),
              onTap: () {},
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.01,
            ),
            ListTile(
              title: const Text('Settings'),
              leading: SvgPicture.asset("assets/icons/Setting.svg"),
              onTap: () {},
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.01,
            ),
            ListTile(
              title: Text(
                'Logout',
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: AppColors.redColor,
                    fontWeight: FontWeight.w500),
              ),
              leading: SvgPicture.asset("assets/icons/Logout.svg"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
