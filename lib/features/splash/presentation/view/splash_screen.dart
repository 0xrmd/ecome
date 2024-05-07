import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
//* -------------------------------
  //? 2. Add the animationController and slidingAnimation variables
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  //* 1. Add the initState method
  @override
  void initState() {
    super.initState();
    //* Call the initSlidingAnimation method to
    initSlidingAnimation();
    /*  This Method will navigate to the home view after 3 seconds
        With Transaction
    */
    navigateToHome();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    //? -------------------------------
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    ).animate(
      animationController,
    );
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      /*
      Get.to(() => const HomeView(),
          transition: Transition.cupertinoDialog,
          duration: kTransactionDuration);
      */
      Navigator.pushNamed(context, "/home");
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
            child: Image.asset(
          "assets/images/Logo.png",
          width: 130,
        )));
  }
}
