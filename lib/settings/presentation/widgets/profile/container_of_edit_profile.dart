import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/controllers/profile_cubit/profile_cubit.dart';
import 'package:pastport/settings/presentation/controllers/profile_cubit/profile_states.dart';
import 'package:pastport/settings/presentation/widgets/profile/custom_appbar_for_profile_screens.dart';

class ContainerOfEditProfile extends StatelessWidget {
  const ContainerOfEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 27.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(33),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(4, 6),
          ),
        ],
      ),
      child: BlocBuilder<ProfileCubit, ProfileStates>(
        builder: (BuildContext context, ProfileStates state) {
          return ModalProgressHUD(
              blur: 6.0,
              color: AppColors.primaryColor,
              opacity: .5,
              inAsyncCall: state is GetProfileLoadingState,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppbarForProfileScreens(),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                "First Name",
                                style: Styles.styleSemiBold24(
                                  context,
                                ).copyWith(fontSize: 16.0),
                              ),
                            ),
                            CustomTextField(
                              hint: Text(ProfileCubit.get(context).userModel!.data.firstName),
                              height: 33.0,
                              radius: 6,
                              isFilled: false,
                              keyboardType: TextInputType.text,
                              controller: ProfileCubit.get(context).fNameController,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                "Last Name",
                                style: Styles.styleSemiBold24(
                                  context,
                                ).copyWith(fontSize: 16.0),
                              ),
                            ),
                            CustomTextField(
                              hint: Text(ProfileCubit.get(context).userModel!.data.lastName),
                              height: 33.0,
                              radius: 6,
                              isFilled: false,
                              keyboardType: TextInputType.text,
                              controller: ProfileCubit.get(context).lNameController,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "E-mail",
                      style: Styles.styleSemiBold24(context).copyWith(fontSize: 16.0),
                    ),
                  ),
                  CustomTextField(
                    hint: Text(ProfileCubit.get(context).userModel!.data.email),
                    height: 33.0,
                    radius: 6.0,
                    isFilled: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: ProfileCubit.get(context).mailController,
                  ),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Password",
                      style: Styles.styleSemiBold24(context).copyWith(fontSize: 16.0),
                    ),
                  ),
                  CustomTextField(
                    suffixIcon: Icons.change_circle_outlined,
                    onPressedSuffixIcon: (){},
                    hint: Text("***********"),
                    height: 33.0,
                    radius: 6.0,
                    isFilled: false,
                    keyboardType: TextInputType.text,
                    controller: ProfileCubit.get(context).passController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 36.0),
                    child: CustomButton(
                      borderColor: AppColors.secondaryColor,
                      buttonColor: AppColors.secondaryColor,
                      radius: 6.0,
                      height: 45,
                      onPressed: () {},
                      buttonText: "Save Changes",
                      textStyle: Styles.styleSemiBold20(context),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
