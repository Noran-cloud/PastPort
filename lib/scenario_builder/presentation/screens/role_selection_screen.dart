import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/screens/goal_selection_screen.dart';
import 'package:pastport/scenario_builder/presentation/screens/scene_view_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/customization_body_role_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/customization_body_screens.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key, required this.eraModel});

  final EraModel eraModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomizationBodyRoleScreen(
        onTap: ()
        {
          context.navigate(
              GoalSelectionScreen(
                eraModel: eraModel,
                onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(
                          milliseconds: 400,
                        ), // سرعة الأنيميشن
                        pageBuilder: (_, animation, secondaryAnimation) =>
                            SceneViewScreen(),
                        transitionsBuilder: (_, animation, __, child) {
                          // Slide Animation
                          const begin = Offset(1.0, 0.0); // من اليمين
                          const end = Offset.zero;
                          var slideAnim = Tween(
                            begin: begin,
                            end: end,
                          ).animate(animation);

                          // Fade Animation
                          var fadeAnim = Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation);

                          return FadeTransition(
                            opacity: fadeAnim,
                            child: SlideTransition(
                              position: slideAnim,
                              child: child,
                            ),
                          );
                        },
                      ),
                    );
                  },
              ),
          );
        },
        isLocationSelected: false,
        isGoalSelected: false,
        isRoleSelected: true,
        selectionText: AppStrings.roleSelectionText,
        eraModel: eraModel,
      ),
    );
  }
}
