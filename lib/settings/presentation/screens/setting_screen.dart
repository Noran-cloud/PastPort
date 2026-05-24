import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/help_support_screen.dart';
import 'package:pastport/settings/presentation/screens/log_out_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/terms_policies_screen.dart';
import 'package:pastport/settings/presentation/widgets/setting_widgets/setting_background.dart';
import 'package:pastport/settings/presentation/widgets/setting_widgets/setting_item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingBackground(),
            SizedBox(height: 10.h),
            /// ACCOUNT SECTION
            sectionTitle(AppStrings.accountText, context),
            customContainer(
              children: [
                settingItem(
                  icon: Icons.person_outline_rounded,
                  title: AppStrings.editProfileText,
                  context: context,
                  onTap: () {},
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
    );
  }
}