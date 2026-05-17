import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/sign_up_cubit/sign_up_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/sign_up_cubit/sign_up_states.dart';
import 'package:pastport/authentication/presentation/screens/login_screen.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class FormOfSignUpScreen extends StatelessWidget {
  const FormOfSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
      builder: (BuildContext context, SignUpStates state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: SignUpCubit.get(context).formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return "Please enter your first name";
                      }
                      return null;
                    },
                    controller: SignUpCubit.get(context).fNameController,
                    keyboardType: TextInputType.text,
                    height: 40,
                    radius: 8.0,
                    labelText: "First name",
                    isFilled: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 31.0),
                    child: CustomTextField(
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return "Please enter your last name";
                        }
                        return null;
                      },
                      controller: SignUpCubit.get(context).lNameController,
                      keyboardType: TextInputType.text,
                      height: 40,
                      radius: 8.0,
                      labelText: "Last name",
                      isFilled: false,
                    ),
                  ),
                  CustomTextField(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return "Please enter your email";
                      }
                      return null;
                    },
                    controller: SignUpCubit.get(context).mailController,
                    keyboardType: TextInputType.emailAddress,
                    height: 40,
                    radius: 8.0,
                    labelText: "Email",
                    isFilled: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 31.0),
                    child: CustomTextField(
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return "Please enter your password";
                        }
                        return null;
                      },
                      controller: SignUpCubit.get(context).passController,
                      keyboardType: TextInputType.text,
                      height: 40,
                      radius: 8.0,
                      labelText: "Password",
                      isFilled: false,
                    ),
                  ),
                  CustomTextField(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return "Please confirm your password";
                      }
                      return null;
                    },
                    controller: SignUpCubit.get(context).confirmPassController,
                    keyboardType: TextInputType.text,
                    height: 40,
                    radius: 8.0,
                    labelText: "Confirm Password",
                    isFilled: false,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 31,
                horizontal: 48.0,
              ),
              child: CustomButton(
                borderColor: AppColors.textFieldBorderColor,
                buttonColor: AppColors.whiteColor,
                radius: 8.0,
                height: 40.0,
                onPressed: () {
                  if(SignUpCubit.get(context).formKey.currentState!.validate())
                  {
                    SignUpCubit.get(context).registerNewUser(
                      mail: SignUpCubit.get(context).mailController.text,
                      pass: SignUpCubit.get(context).passController.text,
                      fName: SignUpCubit.get(context).fNameController.text,
                      lName: SignUpCubit.get(context).lNameController.text,
                      confirmPass: SignUpCubit.get(context).confirmPassController.text,
                    );
                    print(state);
                  }
                },
                buttonText: state is SignUpLoadingState ? "Loading.." : AppStrings.signUpText,
                textStyle: Styles.styleBold16(context)
                    .copyWith(
                  fontSize: 16,
                  color: AppColors.textFieldBorderColor,
                ),
              ),
            ),
            CustomTextButton(
              onPressed: () {
                context.navigate(LoginScreen());
              },
              text: AppStrings.alreadyHaveAccountText,
              style: Styles.styleSemiBold12(
                context,
                true,
              ).copyWith(fontSize: 10),
            ),
          ],
        );
      },
      listener: (BuildContext context, SignUpStates state)
      {
        if(state is SignUpSuccessState)
        {
          context.navigate(LoginScreen());
        }
      },
    );
  }
}
