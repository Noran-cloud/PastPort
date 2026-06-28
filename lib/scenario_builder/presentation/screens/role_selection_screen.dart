import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/screens/goal_selection_screen.dart';
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
          context.navigate(GoalSelectionScreen(eraModel: eraModel,));
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
