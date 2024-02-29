import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/widgets/back_button.dart';
import 'package:ecome/utils/widgets/bottom_action.dart';
import 'package:ecome/utils/widgets/single_product_in_cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAction(
        onPressed: () {},
        actionText: 'Checkout',
      ),
      appBar: AppBar(
        elevation: 0,
        leading: ArrowBackButton(
            icon: const Icon(Icons.arrow_back), onPressed: () {}),
        title: const Text(
          'Cart',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: ScreenSize.deviceHeight * 0.03,
            ),
            const SingleProductInCart()
          ],
        ),
      ),
    );
  }
}
