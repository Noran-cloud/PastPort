import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/core/utils/constants.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_cubit.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_states.dart';
import 'package:pastport/subscription/presentation/screens/subscription_plans_screen.dart';
import 'package:pastport/subscription/presentation/widgets/frame_of_screens.dart';
import 'package:pastport/subscription/presentation/widgets/language_selection_screen_widgets/group_of_languages.dart';
import 'package:pastport/subscription/presentation/widgets/language_selection_screen_widgets/head_of_language_screen.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SubscriptionCubit(),
      child: Scaffold(
        body: FrameOfScreens(
          widget: Column(
            children: [
              HeadOfLanguageScreen(),
              SizedBox(height: context.height * .03),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      GroupOfLanguages(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 25.0),
                        child: BlocConsumer<SubscriptionCubit, SubscriptionStates>(
                            builder: (BuildContext context, SubscriptionStates state) {
                              return CustomButton(
                                borderColor: Constants.isSelectedLanguage? AppColors.primaryColor : AppColors.primaryColor.withValues(alpha: .20),
                                buttonColor: Constants.isSelectedLanguage? AppColors.primaryColor : AppColors.primaryColor.withValues(alpha: .20),
                                radius: 10.0,
                                height: 55.0,
                                onPressed: () {
                                  SubscriptionCubit.get(context).getAllPlans();
                                },
                                buttonText: state is GetAllPlansLoadingState? "Loading.." : AppStrings.continueButtonText,
                                textStyle: Styles.styleMedium16(
                                  context,
                                ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
                              );
                            },
                          listener: (BuildContext context, SubscriptionStates state) {
                            if(state is GetAllPlansSuccessState)
                            {
                              context.navigate(SubscriptionPlansScreen(subscriptionPlanModel: SubscriptionCubit.get(context).subscriptionPlans,));
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
