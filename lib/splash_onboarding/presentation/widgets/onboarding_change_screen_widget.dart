import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_router.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/splash_onboarding/domain/entities/onboarding.dart';
import 'package:pastport/splash_onboarding/presentation/controllers/onboarding_cubit/onboarding_cubit.dart';
import 'package:pastport/splash_onboarding/presentation/controllers/onboarding_cubit/onboarding_states.dart';

class OnboardingChangeScreenWidget extends StatelessWidget {
  const OnboardingChangeScreenWidget({super.key, required this.model});

  final Onboarding model;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (BuildContext context, OnBoardingStates state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  model.image,
                  height: context.height * .5,
                  width: context.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 33.0, right: 20.0),
                  child: TextButton(
                      onPressed: ()
                      {
                        context.go(AppRouter.kAuthView);
                      },
                      child: Text(
                    AppStrings.skipText,
                    style: Styles.styleMedium16(context).copyWith(
                      fontSize: 16,
                      color: Color(0xE9E3D1D9),
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 33,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    model.title,
                    style: Styles.styleBold30(context).copyWith(fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      model.description,
                      style: Styles.styleRegular15(context).copyWith(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },

    );
  }
}
