import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/splash_onboarding/domain/entities/onboarding.dart';
import 'package:pastport/splash_onboarding/presentation/controllers/onboarding_cubit/onboarding_states.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates>
{
  OnBoardingCubit() : super(OnBoardingInitialState());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeIndex(int index)
  {
    currentIndex = index;
    emit(ChangeScreenState());
  }

  List<Onboarding> onBoardingScreens =
  [
    Onboarding(image: Assets.firstOnboardingImage, title: AppStrings.firstOnboardingTitle, description: AppStrings.firstOnboardingDescription),
    Onboarding(image: Assets.secondOnboardingImage, title: AppStrings.secondOnboardingTitle, description: AppStrings.secondOnboardingDescription),
    Onboarding(image: Assets.thirdOnboardingImage, title: AppStrings.thirdOnboardingTitle, description: AppStrings.thirdOnboardingDescription),
  ];

  PageController controller = PageController();
}