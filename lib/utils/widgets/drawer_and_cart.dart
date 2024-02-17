import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerCartWidget extends StatelessWidget {
  final BuildContext context;
  const DrawerCartWidget({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.deviceWidth * 0.005,
          vertical: ScreenSize.deviceHeight * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Menu.svg"),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/Cart.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
