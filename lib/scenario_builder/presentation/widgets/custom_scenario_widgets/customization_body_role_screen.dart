import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/head_of_scenario_screens.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/scenario_selection_item.dart';

class CustomizationBodyRoleScreen extends StatelessWidget {
  const CustomizationBodyRoleScreen({
    super.key,
    required this.isLocationSelected,
    required this.isGoalSelected,
    required this.isRoleSelected,
    required this.selectionText,
    required this.eraModel,
    required this.onTap,
  });

  final bool isLocationSelected;
  final bool isGoalSelected;
  final bool isRoleSelected;
  final String selectionText;

  final EraModel eraModel;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 62.0,
        right: 24.0,
        left: 24.0,
        bottom: 8.0,
      ),
      child: Column(
        children: [
          HeadOfScenarioScreens(
            isLocationSelected: isLocationSelected,
            isGoalSelected: isGoalSelected,
            isRoleSelected: isRoleSelected,
          ),
          Row(
            children: [
              Text(
                selectionText,
                style: Styles.styleMedium30(context).copyWith(fontSize: 30.0),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              ScenarioSelectionItem(
                image: eraModel.roleImages[0],
                title: AppStrings.historicalRoleText,
                onTap: onTap,
              ),
              SizedBox(width: 15.0),
              ScenarioSelectionItem(
                image: eraModel.roleImages[1],
                title: AppStrings.citizenRoleText,
                onTap: onTap,
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              ScenarioSelectionItem(
                image: eraModel.roleImages[2],
                title: AppStrings.characterRoleText,
                onTap: onTap,
              ),
              SizedBox(width: 15.0),
              ScenarioSelectionItem(
                image: eraModel.roleImages[3],
                title: AppStrings.visitorRoleText,
                onTap: onTap,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
