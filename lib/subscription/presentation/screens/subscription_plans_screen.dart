import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/subscription/data/models/subscription_plan_model.dart';
import 'package:pastport/subscription/presentation/screens/guides_screen.dart';
import 'package:pastport/subscription/presentation/widgets/frame_of_screens.dart';
import 'package:pastport/subscription/presentation/widgets/subscription_plans_screen_widgets/group_of_plans.dart';
import 'package:pastport/subscription/presentation/widgets/subscription_plans_screen_widgets/head_of_subscription_plans_screen.dart';

class SubscriptionPlansScreen extends StatelessWidget {
  const SubscriptionPlansScreen({super.key, required this.subscriptionPlanModel});

  final List<SubscriptionPlanModel> subscriptionPlanModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FrameOfScreens(
        backgroundColor: AppColors.primaryColor,
        widget: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  children: [
                    HeadOfSubscriptionPlansScreen(),
                    GroupOfPlans(subscriptionPlans: subscriptionPlanModel,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
                      child: CustomButton(
                        borderColor: AppColors.secondaryColor,
                        buttonColor: AppColors.secondaryColor,
                        radius: 12,
                        height: 46,
                        onPressed: () {
                          context.navigate(GuidesScreen());
                        },
                        buttonText: AppStrings.freeTrialText,
                        textStyle: Styles.styleMedium16(
                          context,
                        ).copyWith(fontSize: 14.sp, color: AppColors.whiteColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.endOfPlanScreenText,
                        style: Styles.styleRegular14(
                          context,
                        ).copyWith(fontSize: 11.sp, color: AppColors.secondaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

