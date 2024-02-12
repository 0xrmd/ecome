import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/View/Screens/new_password_screen.dart';
import 'package:ecome/View/Screens/social_register.dart';
import 'package:flutter/material.dart';

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
          '/': (context) => const NewPasswordScreen(),
          '/SocialLoginScreen': (context) => const SocialRegisterScreen(),
        });
  }
}
