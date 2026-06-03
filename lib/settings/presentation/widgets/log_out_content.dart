import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/screens/auth_selection_screen.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/controllers/log_out_cubit/log_out_cubit.dart';
import 'package:pastport/settings/presentation/controllers/log_out_cubit/log_out_states.dart';

class LogOutContent extends StatelessWidget {
  const LogOutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withValues(alpha: .06),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 33,
                backgroundColor: Color(0xffFF0000).withValues(alpha: .15),
                child: Icon(Icons.logout, size: 33, color: Color(0xffFF0000),),
              ),
              SizedBox(height: 8,),
              Text(AppStrings.logOutYourAccount, style: Styles.styleBold15(context).copyWith(
                fontSize: 11.0,
                color: AppColors.secondaryColor,
              ),),
              SizedBox(height: 8,),
              Text(
                AppStrings.needToSignInAgain,
                style: Styles.styleRegular10(context).copyWith(
                  color: AppColors.faqQuestionColor,
                ),),
              SizedBox(height: 12,),
              BlocConsumer<LogOutCubit, LogOutStates>(
                builder: (BuildContext context, Object? state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52.0),
                    child: CustomButton(
                      borderColor: Color(0xffFF0000).withValues(alpha: .6),
                      buttonColor: Color(0xffFF0000).withValues(alpha: .6),
                      radius: 4,
                      height: 40,
                      onPressed: ()
                      {
                        LogOutCubit.get(context).logout();
                      },
                      buttonText: state is LoggedOutLoadingState ? "Logging out.." : AppStrings.logOutText,
                      textStyle: Styles.styleSemiBold20(context).copyWith(
                        fontSize: 10.0,
                      ),
                    ),
                  );
                },
                listener: (BuildContext context, state) {
                  if(state is LoggedOutSuccessState)
                  {
                    context.navigate(AuthSelectionScreen());
                  }
                },
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52.0),
                child: CustomButton(
                  borderColor: AppColors.whiteColor,
                  buttonColor: AppColors.whiteColor,
                  radius: 4,
                  height: 40,
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  },
                  buttonText: AppStrings.cancelText,
                  textStyle: Styles.styleSemiBold20(context).copyWith(
                      fontSize: 10.0,
                      color: AppColors.faqQuestionColor
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
