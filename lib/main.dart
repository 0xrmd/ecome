import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/View/Auth/social_register.dart';
import 'package:ecome/View/Cart/cart.dart';
import 'package:ecome/View/Home/home.dart';
import 'package:flutter/material.dart';

import 'View/Products/all_products.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecomerce App UI',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => AllProducts(),
          '/SocialLoginScreen': (context) => const SocialRegisterScreen(),
          '/cart': (context) => const CartScreen(),
        });
  }
}
