import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.labelText,
      required this.controller,
      required this.isPassword,
      required this.keyboardType,
      required this.isSearch});
  final String labelText;
  TextEditingController controller = TextEditingController();
  final bool isPassword;
  final TextInputType keyboardType;
  final bool isSearch;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? isObscure : false,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.labelText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 117, 117, 118),
        ),
        prefixIcon: widget.isSearch
            ? const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.search,
                  weight: 25,
                  color: AppColors.subTextColor,
                ))
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.8),
            ),
            borderRadius: BorderRadius.circular(10)),
        suffixIcon: widget.isPassword
            ? IconButton(
                color: const Color.fromARGB(255, 129, 129, 129),
                icon: isObscure
                    ? const Icon(
                        Icons.visibility_off,
                        color: AppColors.backgroundColor,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: AppColors.backgroundColor,
                      ),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              )
            : null,
      ),
      keyboardType: widget.keyboardType,
    );
  }
}
