import 'package:ecome/core/utils/widgets/onboard_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: deviceHeight,
      width: deviceWidth,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.center,
        end: Alignment(0.0, 2),
        colors: <Color>[
          Color(0xFF9775FA),
          Color(0xFFFEFEFE),
        ],
        tileMode: TileMode.mirror,
      )),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Image.asset(
          "assets/images/model_guy.png",
        ),
        Positioned(
          bottom: deviceHeight * 0.05,
          child: OnBoardWidget(
              deviceHeight: deviceHeight, deviceWidth: deviceWidth),
        ),
      ]),
    ));
  }
}
