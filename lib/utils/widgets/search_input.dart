import 'package:ecome/utils/constants/app_colors.dart';
import 'package:ecome/utils/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  final TextEditingController searchController;
  const SearchInput({super.key, required this.searchController});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.buttonsColorGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomTextField(
                  focusBorder: InputBorder.none,
                  enableBorder: InputBorder.none,
                  isSearch: true,
                  labelText: "Search...",
                  controller: widget.searchController,
                  isPassword: false,
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(5)),
            child: const Icon(
              Icons.mic,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
