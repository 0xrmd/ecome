import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputBar extends StatelessWidget {
  const InputBar(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.context,
      required this.keyboardType});
  final TextEditingController controller;
  final String labelText;
  final BuildContext context;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.buttonsColorGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomTextField(
              labelText: '',
              controller: controller,
              isPassword: false,
              keyboardType: keyboardType,
              isSearch: false,
              focusBorder: InputBorder.none,
              enableBorder: InputBorder.none,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              onChanged: (String) {}),
        ),
      ],
    );
  }
}
