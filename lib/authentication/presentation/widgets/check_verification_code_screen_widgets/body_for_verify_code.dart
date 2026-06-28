import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/send_code_cubit/code_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/verification_cubit/verification_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/verification_cubit/verification_states.dart';
import 'package:pastport/authentication/presentation/widgets/check_verification_code_screen_widgets/otp_code_text_field.dart';
import 'package:pastport/authentication/presentation/widgets/check_verification_code_screen_widgets/resend_code_row.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class BodyForVerifyCode extends StatelessWidget {
  const BodyForVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OtpCodeTextField(),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: CustomButton(
            borderColor: AppColors.secondaryColor,
            buttonColor: AppColors.secondaryColor,
            radius: 12,
            height: 43,
            onPressed: ()
            {
              SendCodeCubit.get(context).verifyCode(
                  code: "52056",
                  mail: "omaraboelmaaty@std.mans.edu.eg"
              );
            },
            buttonText: AppStrings.verifyCodeText,
            textStyle: Styles.styleBold16(context).copyWith(fontSize: 16),
          ),
        ),
        SizedBox(height: 4),
        ResendCodeRow(),
      ],
    );
  }
}
