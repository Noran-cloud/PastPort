import 'package:go_router/go_router.dart';
import 'package:pastport/app_cubit.dart';
import 'package:pastport/app_states.dart';
import 'package:pastport/authentication/presentation/screens/auth_selection_screen.dart';
import 'package:pastport/scenario_builder/presentation/screens/eras_screen.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/help_support_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/terms_policies_screen.dart';
import 'package:pastport/splash_onboarding/presentation/screens/onboarding_screen.dart';

abstract class AppRouter
{
  static const String kOnBoardingView = '/';
  static const String kAuthView = '/AuthSelectionScreen';
  static const String kHelpSupportView = '/HelpSupportScreen';
  static const String kTermsPoliciesView = '/TermsPoliciesScreen';
  static const String kHomeView = '/ErasScreen';

  static GoRouter router = GoRouter(

      redirect: (context, state) {

        final appState = AppCubit.get(context).state;

        final isInAuthFlow =
            state.matchedLocation == kOnBoardingView ||
                state.matchedLocation == kAuthView;

        if (appState is UserLoggedInState && isInAuthFlow) {
          return kHomeView;
        }

        if (appState is UserLoggedOutState &&
            state.matchedLocation == kHomeView) {
          return kAuthView;
        }

        return null;
      },

      routes:
      [
        GoRoute(
          name: kAuthView,
          path: kAuthView,
          builder: (context, state) {
            return const AuthSelectionScreen();
          },
        ),
        GoRoute(
          name: kOnBoardingView,
          path: kOnBoardingView,
          builder: (context, state) =>  OnboardingScreen(),
        ),
        GoRoute(
          name: kHelpSupportView,
          path: kHelpSupportView,
          builder: (context, state) {
            return const HelpSupportScreen();
          },
        ),
        GoRoute(
          name: kTermsPoliciesView,
          path: kTermsPoliciesView,
          builder: (context, state) {
            return const TermsPoliciesScreen();
          },
        ),
        GoRoute(
          name: kHomeView,
          path: kHomeView,
          builder: (context, state) {
            return const ErasScreen();
          },
        ),
      ]
  );
}