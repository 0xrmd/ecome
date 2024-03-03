import 'package:ecome/Models/view%20Model/screen_size.dart';
import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/back_button.dart';
import 'package:ecome/utils/widgets/bottom_action.dart';
import 'package:ecome/utils/widgets/input_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAction(
        onPressed: () {},
        actionText: 'Save Address',
      ),
      appBar: AppBar(
        elevation: 0,
        leading: ArrowBackButton(
            icon: const Icon(Icons.arrow_back), onPressed: () {}),
        title: const Text(
          'Address',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenSize.screenHeight * 0.05,
              ),
              InputBar(
                context: context,
                controller: _nameController,
                labelText: 'Full Name',
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: ScreenSize.screenWidth * 0.42,
                    child: InputBar(
                      context: context,
                      controller: _cityController,
                      labelText: 'City',
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    width: ScreenSize.screenWidth * 0.42,
                    child: InputBar(
                      context: context,
                      controller: _stateController,
                      labelText: 'State',
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.025,
              ),
              InputBar(
                context: context,
                controller: _phoneController,
                labelText: 'Phone Number',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.025,
              ),
              InputBar(
                context: context,
                controller: _addressController,
                labelText: 'Address',
                keyboardType: TextInputType.streetAddress,
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Save as primary address",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                    ),
                  ),
                  Switch(
                    value: checkedValue,
                    onChanged: (onChanged) {
                      setState(() {
                        checkedValue = onChanged;
                      });
                    },
                    focusColor: AppColors.checkboxColorGreen,
                    activeColor: AppColors.primaryColor,
                    activeTrackColor: AppColors.checkboxColorGreen,
                    inactiveTrackColor: AppColors.buttonsColorGrey,
                    inactiveThumbColor: AppColors.textColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
