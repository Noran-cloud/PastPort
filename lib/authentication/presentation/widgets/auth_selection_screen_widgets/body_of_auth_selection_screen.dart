import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/screens/login_screen.dart';
import 'package:pastport/authentication/presentation/screens/sign_up_screen.dart';
import 'package:pastport/authentication/presentation/widgets/auth_selection_screen_widgets/bottom_curve_container.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/transparency_image.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class BodyOfAuthSelectionScreen extends StatelessWidget {
  const BodyOfAuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransparencyImage(assetName: Assets.registrationImage),
        SizedBox(height: context.height * .05),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 95.0),
          child: Column(
            children: [
              CustomButton(
                borderColor: AppColors.secondaryColor,
                buttonColor: AppColors.secondaryColor,
                radius: 5.0,
                height: 45,
                onPressed: ()
                {
                  context.navigate(LoginScreen());
                },
                buttonText: AppStrings.loginText,
                textStyle: Styles.styleSemiBold20(context).copyWith(fontSize: 20),
              ),
              SizedBox(height: 18),
              CustomButton(
                borderColor: AppColors.secondaryColor,
                buttonColor: AppColors.secondaryColor,
                radius: 5.0,
                height: 45,
                onPressed: () {
                  context.navigate(SignUpScreen());
                },
                buttonText: AppStrings.signUpText,
                textStyle: Styles.styleSemiBold20(context).copyWith(fontSize: 20),
              ),
            ],
          ),
        ),
        Spacer(),
        BottomCurveContainer() ,
      ],
    );
  }
}
