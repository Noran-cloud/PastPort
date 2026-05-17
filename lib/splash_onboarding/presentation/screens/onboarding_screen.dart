import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pastport/authentication/presentation/screens/auth_selection_screen.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_router.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/splash_onboarding/presentation/controllers/onboarding_cubit/onboarding_cubit.dart';
import 'package:pastport/splash_onboarding/presentation/controllers/onboarding_cubit/onboarding_states.dart';
import 'package:pastport/splash_onboarding/presentation/widgets/onboarding_change_screen_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingStates>(
        builder: (BuildContext context, state)
        {
          return  Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                      onPageChanged: (index) {
                        OnBoardingCubit.get(context).changeIndex(index);
                      },
                    controller: OnBoardingCubit.get(context).controller,
                    itemCount: OnBoardingCubit.get(context).onBoardingScreens.length,
                    itemBuilder: (context, index) => OnboardingChangeScreenWidget(model: OnBoardingCubit.get(context).onBoardingScreens[index],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: SmoothPageIndicator(
                    controller: OnBoardingCubit.get(context).controller,
                    count: OnBoardingCubit.get(context).onBoardingScreens.length,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 3.5,
                      spacing: 6,
                      radius: 10,
                      dotWidth: 12,
                      dotHeight: 6,
                      strokeWidth: 0,
                      dotColor: AppColors.primaryColor.withValues(alpha: .5),
                      activeDotColor: AppColors.primaryColor,
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45.0, bottom: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: ()
                        {
                          if(OnBoardingCubit.get(context).currentIndex == 2)
                          {
                            context.go(AppRouter.kAuthView);                          } else
                          {
                            OnBoardingCubit.get(context).controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: Color(0xffCBB98E).withValues(
                              alpha: .6
                          ),
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: AppColors.whiteColor,
                            child: CircleAvatar(
                              backgroundColor: Color(0xCBB98E66),
                              radius: 20,
                              child: Center(child: Image.asset(Assets.changeOnboardingScreenIcon, height: 100, width: 100,)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

