import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_states.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/remember_password_check_button.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ContentOfFirstContainer extends StatelessWidget {
  const ContentOfFirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      builder: (BuildContext context, LoginStates state)
      {
        return Column(
          children: [
            Image.asset(Assets.loginImage, height: 133),
            SizedBox(height: 5),
            Text(
              AppStrings.welcomeText,
              style: Styles.styleRegular21(
                context,
              ).copyWith(fontSize: 21),
            ),
            Text(
              AppStrings.welcomeDescriptionText,
              style: Styles.styleRegular16(
                context,
              ).copyWith(fontSize: 16),
            ),
            CustomTextButton(
              onPressed: () {},
              text: AppStrings.termsConditionText,
              style: Styles.styleDarkRegular16(
                context,
              ).copyWith(fontSize: 16),
            ),
            CustomTextField(
              controller: LoginCubit.get(context).mailController,
              keyboardType: TextInputType.emailAddress,
              height: 43,
              radius: 9,
              labelText: "Email Address",
              isFilled: true,
              suffixIcon: Icons.email_outlined,
            ),
            SizedBox(height: 15),
            CustomTextField(
              controller: LoginCubit.get(context).passController,
              keyboardType: TextInputType.text,
              height: 43,
              radius: 9,
              labelText: "Password",
              isFilled: true,
              suffixIcon: Icons.lock_outline,
            ),
            SizedBox(height: 10),
            RememberPasswordCheckButton(),
          ],
        );
      },

    );
  }
}
