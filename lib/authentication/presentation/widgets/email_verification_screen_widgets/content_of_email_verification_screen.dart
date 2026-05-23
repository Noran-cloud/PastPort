import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/verification_cubit/verification_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/verification_cubit/verification_states.dart';
import 'package:pastport/authentication/presentation/screens/check_verification_code_screen.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/authentication/presentation/widgets/head_of_verification_screens.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ContentOfEmailVerificationScreen extends StatelessWidget {
  const ContentOfEmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadOfVerificationScreens(
          title: AppStrings.enterEmailText,
          subtitle: AppStrings.enterEmailDescriptionText,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42.0),
          child: CustomTextField(
            controller: VerificationCubit.get(context).mailController,
            keyboardType: TextInputType.emailAddress,
            height: 40.0,
            radius: 8,
            isFilled: false,
            suffixIcon: Icons.email_outlined,
            labelText: "Email",
          ),
        ),
        SizedBox(
          height: context.height * .07,
        ),
        BlocConsumer<VerificationCubit, VerificationStates>(
          builder: (BuildContext context, VerificationStates state)
          {
            return  state is SendCodeLoadingState ? CircularProgressIndicator
              (
              color: AppColors.secondaryColor,
            ) : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: CustomButton(
                borderColor: AppColors.secondaryColor,
                buttonColor: AppColors.secondaryColor,
                radius: 12,
                height: 56.0,
                onPressed: ()
                {
                  VerificationCubit.get(context).sendPasswordResetEmail(
                      mail: VerificationCubit.get(context).mailController.text,
                  );
                },
                buttonText: AppStrings.sendVerificationCodeText,
                textStyle: Styles.styleBold16(
                  context,
                ).copyWith(fontSize: 16),
              ),
            );
          },
          listener: (BuildContext context, VerificationStates state)
          {
            if(state is SendCodeSuccessState)
            {
              context.navigate(CheckVerificationCodeScreen());
            }
          },),
      ],
    );
  }
}
