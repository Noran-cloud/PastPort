import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/head_of_scenario_screens.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/scenario_selection_item.dart';

class GoalSelectionScreen extends StatelessWidget {
  const GoalSelectionScreen({super.key, required this.eraModel, required this.onTap});

  final EraModel eraModel;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 62.0,
          right: 24.0,
          left: 24.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            HeadOfScenarioScreens(
              isLocationSelected: false,
              isGoalSelected: true,
              isRoleSelected: false,
            ),
            Row(
              children: [
                Text(
                  AppStrings.goalSelectionText,
                  style: Styles.styleMedium30(context).copyWith(fontSize: 30.0),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                ScenarioSelectionItem(
                  onTap: onTap,
                  image: eraModel.goalImages[0],
                  title: AppStrings.educationGoalTitleText,
                ),
                SizedBox(width: 15.0),
                ScenarioSelectionItem(
                  image: eraModel.goalImages[1],
                  title: AppStrings.explorationGoalTitleText,
                  onTap: onTap,
                ),
              ],
            ),
            SizedBox(height: 15.0),
            ScenarioSelectionItem(
              image: eraModel.goalImages[2],
              title: AppStrings.culturalGoalTitleText,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
