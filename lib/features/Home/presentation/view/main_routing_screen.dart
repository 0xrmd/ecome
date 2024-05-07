import 'package:ecome/features/Home/presentation/view/home.dart';
import 'package:ecome/features/shop/presentation/view/Cart/presentation/view/cart.dart';
import 'package:ecome/features/shop/presentation/view/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainRoutingScreen extends StatefulWidget {
  const MainRoutingScreen({super.key});

  @override
  State<MainRoutingScreen> createState() => _MainRoutingScreenState();
}

class _MainRoutingScreenState extends State<MainRoutingScreen> {
  var _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    WishList(),
    const CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Wishlist"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Wishlist"),
            selectedColor: Colors.pink,
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
