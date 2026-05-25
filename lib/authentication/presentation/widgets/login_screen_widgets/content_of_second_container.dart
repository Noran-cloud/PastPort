import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_states.dart';
import 'package:pastport/authentication/presentation/screens/email_verification_screen.dart';
import 'package:pastport/authentication/presentation/screens/sign_up_screen.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/social_registeration.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_cubit.dart';
import 'package:pastport/subscription/presentation/screens/language_selection_screen.dart';

class ContentOfSecondContainer extends StatelessWidget {
  const ContentOfSecondContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextButton(
              onPressed: ()
              {
                context.navigate(EmailVerificationScreen());
              },
              text: AppStrings.forgetPasswordText,
              style: Styles.styleSemiBold12(
                context,
                false,
              ).copyWith(fontSize: 12),
            ),
          ],
        ),
        SizedBox(height: 45),
        Row(
          children: [
            BlocConsumer<LoginCubit, LoginStates>(
              builder: (BuildContext context, LoginStates state)
              {
                return Expanded(
                  child: CustomButton(
                    borderColor: AppColors.secondaryColor,
                    buttonColor: AppColors.secondaryColor,
                    radius: 27,
                    height: 41,
                    onPressed: () {
                      LoginCubit.get(context).loginUserWithEmailAndPassword(
                        mail: LoginCubit.get(context).mailController.text,
                        pass: LoginCubit.get(context).passController.text,
                      );
                      print(state);
                    },
                    buttonText: state is LoginLoadingState ? "Loading.." : AppStrings.loginText,
                    textStyle: Styles.styleRegular14(context)
                        .copyWith(
                      fontSize: 14,
                      color: AppColors.whiteColor,
                    ),
                  ),
                );
              }, listener: (BuildContext context, LoginStates state) {
              if(state is LoginSuccessState)
              {
                context.navigate(LanguageSelectionScreen());
              }
            },

            ),
            SizedBox(width: 25),
            Expanded(
              child: CustomButton(
                borderColor: AppColors.secondaryColor,
                buttonColor: AppColors.whiteColor,
                radius: 27,
                height: 41,
                onPressed: ()
                {
                  context.navigate(SignUpScreen());
                },
                buttonText: AppStrings.registerText,
                textStyle: Styles.styleRegular14(context)
                    .copyWith(
                  fontSize: 14,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,),
          child: Text(
            AppStrings.connectWithText,
            style: Styles.styleRegular14(
              context,
            ).copyWith(color: Color(0xff747070)),
          ),
        ),
        SocialRegisteration(),
      ],
    );
  }
}
