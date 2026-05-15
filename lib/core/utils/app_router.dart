import 'package:go_router/go_router.dart';
import 'package:pastport/authentication/presentation/screens/auth_selection_screen.dart';
import 'package:pastport/authentication/presentation/screens/login_screen.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/help_support_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/terms_policies_screen.dart';
import 'package:pastport/splash_onboarding/presentation/screens/onboarding_screen.dart';

abstract class AppRouter
{
  static const String kOnBoardingView = '/';
  static const String kAuthView = '/AuthSelectionScreen';
  static const String kHelpSupportView = '/HelpSupportScreen';
  static const String kTermsPoliciesView = '/TermsPoliciesScreen';

  static GoRouter router = GoRouter(
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
          builder: (context, state) => OnboardingScreen(),
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
      ]
  );
}