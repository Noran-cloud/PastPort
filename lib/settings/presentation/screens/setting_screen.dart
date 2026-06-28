import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/controllers/profile_cubit/profile_cubit.dart';
import 'package:pastport/settings/presentation/controllers/profile_cubit/profile_states.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/help_support_screen.dart';
import 'package:pastport/settings/presentation/screens/log_out_screen.dart';
import 'package:pastport/settings/presentation/screens/profile/edit_profile_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/terms_policies_screen.dart';
import 'package:pastport/settings/presentation/widgets/setting_widgets/setting_background.dart';
import 'package:pastport/settings/presentation/widgets/setting_widgets/setting_item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProfileCubit()..getUserData(context),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ModalProgressHUD(
            blur: 6.0,
            color: AppColors.primaryColor,
            opacity: .5,
            inAsyncCall: state is GetProfileLoadingState,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SettingBackground(),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                          state is GetProfileSuccessState
                              ? "${ProfileCubit.get(context).userModel?.data.firstName ?? ""} "
                              "${ProfileCubit.get(context).userModel?.data.lastName ?? ""}"
                              : "",
                        style: Styles.styleBold24(context).copyWith(fontSize: 20.sp),),
                    ),
                    /// ACCOUNT SECTION
                    sectionTitle(AppStrings.accountText, context),
                    customContainer(
                      children: [
                        settingItem(
                          icon: Icons.person_outline_rounded,
                          title: AppStrings.editProfileText,
                          context: context,
                          onTap: ()
                          {
                            ProfileCubit.get(context).getUserData(context);
                            if(state is GetProfileSuccessState)
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => BlocProvider.value(
                                    value: ProfileCubit.get(context),
                                    child: const EditProfileScreen(),
                                  ),
                                ),
                              );
                            }
                            // context.navigate(EditProfileScreen());
                          },
                        ),
                        SizedBox(
                          height: 22.0.h,
                        ),
                        settingItem(
                          icon: Icons.lock_outline_rounded,
                          title: AppStrings.privacyScreenTitle,
                          context: context,
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: context.height * 0.025),
                    /// SUPPORT SECTION
                    sectionTitle(AppStrings.supportAboutText, context),
                    customContainer(
                      children: [
                        settingItem(
                          icon: Icons.credit_card_outlined,
                          title: AppStrings.mySubText,
                          context: context,
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 22.0.h,
                        ),
                        settingItem(
                          icon: Icons.help_outline_rounded,
                          title: AppStrings.helpSupportScreenTitle,
                          context: context,
                          onTap: () {
                            context.navigate(HelpSupportScreen());
                          },
                        ),
                        SizedBox(
                          height: 22.0.h,
                        ),
                        settingItem(
                          icon: Icons.info_outline_rounded,
                          title: AppStrings.termsPoliciesScreenTitle,
                          context: context,
                          onTap: () {
                            context.navigate(TermsPoliciesScreen());
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: context.height * 0.025),
                    /// ACTIONS SECTION
                    sectionTitle(AppStrings.actionsText, context),
                    customContainer(
                      children: [
                        settingItem(
                          icon: Icons.logout_rounded,
                          title: AppStrings.logOutText,
                          context: context, onTap: () {
                          context.navigate(LogOutScreen());
                        },
                        ),
                      ],
                    ),
                    SizedBox(height: context.height * 0.04),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}