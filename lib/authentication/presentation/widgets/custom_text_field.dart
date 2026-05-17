import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.hint, super.key, required this.height, required this.radius, this.labelText, required this.isFilled, this.suffixIcon, required this.keyboardType, required this.controller, this.validator});

  final double height;
  final double radius;
  final Widget? hint;
  final String? Function(String?)? validator;
  final String? labelText;
  final bool isFilled;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Color(0xff8C8888),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff8C8888)
            ),
          ),
          hint: hint,
          label: labelText != null? Text(labelText!, style: Styles.styleRegularGrey15(context).copyWith(color: Color(0xff8C8888)),) : null,
          fillColor: AppColors.whiteColor,
          filled: isFilled,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
          suffixIcon: suffixIcon != null? Icon(suffixIcon, color: AppColors.greyIconColor) : null,
        ),
      ),
    );
  }
}
