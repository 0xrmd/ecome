import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/constants/screen_size.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String imageUrl;
  final String categoryName;
  final Function() onTap;
  const Category(
      {super.key,
      required this.imageUrl,
      required this.categoryName,
      required this.onTap});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        width: ScreenSize.screenWidth * 0.4,
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonsColorGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Image.asset(
                  widget.imageUrl,
                  height: 50,
                  width: 50,
                ),
              ),
              SizedBox(
                width: ScreenSize.screenWidth * 0.05,
              ),
              Text(
                widget.categoryName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
