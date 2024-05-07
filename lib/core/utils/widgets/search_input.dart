import 'package:ecome/core/utils/constants/app_colors.dart';
import 'package:ecome/core/utils/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchInput extends StatefulWidget {
  final TextEditingController searchController;
  final Function()? onMicPressed;
  final Function(String) onChanged;
  const SearchInput(
      {super.key,
      required this.searchController,
      this.onMicPressed,
      required this.onChanged});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
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
                  onChanged: widget.onChanged,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: widget.onMicPressed,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.mic,
                color: AppColors.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
