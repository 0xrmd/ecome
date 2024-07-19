import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
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
        useMaterial3: true,
      ),
    );
  }
}
