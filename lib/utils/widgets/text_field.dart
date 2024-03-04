import 'package:ecome/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.isPassword,
    required this.keyboardType,
    required this.isSearch,
    this.focusBorder,
    this.enableBorder,
    this.padding, required this.onChanged,
  });
  final String labelText;
  TextEditingController controller = TextEditingController();
  final bool isPassword;
  final TextInputType keyboardType;
  final bool isSearch;
  InputBorder? focusBorder;
  InputBorder? enableBorder;
  final EdgeInsets? padding;
  final Function(String) onChanged;

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
    return TextFormField(
      obscureText: widget.isPassword ? isObscure : false,
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.labelText,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(117, 117, 118, 1),
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
        focusedBorder: widget.focusBorder,
        enabledBorder: widget.enableBorder,
        contentPadding: widget.padding,
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
