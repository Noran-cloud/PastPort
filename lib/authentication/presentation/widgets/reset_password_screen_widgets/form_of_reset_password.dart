import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class FormOfResetPassword extends StatelessWidget {
  const FormOfResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: TextEditingController(),
          labelText: "Password",
          suffixIcon: Icons.visibility_off_outlined,
          height: 40,
          radius: 8,
          isFilled: false,
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 30),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "Confirm Password",
          suffixIcon: Icons.visibility_off_outlined,
          height: 40,
          radius: 8,
          isFilled: false,
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 30),
        CustomButton(
          borderColor: AppColors.secondaryColor,
          buttonColor: AppColors.secondaryColor,
          radius: 12,
          height: 56,
          onPressed: () {},
          buttonText: AppStrings.updatePasswordText,
          textStyle: Styles.styleBold16(context).copyWith(fontSize: 16),
        ),
      ],
    );
  }
}
