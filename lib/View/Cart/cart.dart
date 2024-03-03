import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/back_button.dart';
import 'package:ecome/utils/widgets/bottom_action.dart';
import 'package:ecome/utils/widgets/shipping_and_payment_cart.dart';
import 'package:ecome/utils/widgets/single_product_in_cart.dart';
import 'package:ecome/utils/widgets/sub_address_and_payment.dart';
import 'package:ecome/utils/widgets/summery_order.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: ListView(
        children: [
          SizedBox(
            height: ScreenSize.screenHeight * 0.03,
          ),
          const SingleProductInCart(
            color: Colors.white,
          ),

          //? Shipping Section
          const SubTitleAndIcon(
            title: 'Shipping Address',
          ),
          SizedBox(
            height: ScreenSize.screenHeight * 0.01,
          ),
          Row(
            children: [
              Container(
                height: 50,
                alignment: Alignment.center,
                width: 50,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColors.buttonsColorGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/icons/Location.png",
                  width: 25,
                  color: AppColors.orange,
                ),
              ),
              const SubAddressAndPayment(
                title: 'New York',
                subTitle: "123, Main Street, New York",
              ),
            ],
          ),
          SizedBox(
            height: ScreenSize.screenHeight * 0.01,
          ),
          const SubTitleAndIcon(
            title: 'Payment Method',
          ),
          SizedBox(
            height: ScreenSize.screenHeight * 0.01,
          ),
          Row(
            children: [
              Container(
                height: 50,
                alignment: Alignment.center,
                width: 50,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColors.buttonsColorGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/icons/visa.png",
                  width: 25,
                  color: Colors.blue,
                ),
              ),
              const SubAddressAndPayment(
                title: 'Visa Card',
                subTitle: "**** 5647",
              )
            ],
          ),
          SizedBox(
            height: ScreenSize.screenHeight * 0.01,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Summary",
                    style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * 0.02,
                  ),
                  const OrderSummary(
                    title: 'Subtotal',
                    price: '300',
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * 0.01,
                  ),
                  const OrderSummary(
                    title: 'Shipping cost',
                    price: '15',
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * 0.01,
                  ),
                  const OrderSummary(
                    title: 'Total',
                    price: '315',
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
