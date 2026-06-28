import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/era_details_body_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/head_of_screens.dart';

class EraDetailsScreen extends StatelessWidget {
  const EraDetailsScreen({super.key, required this.eraModel});

  final EraModel eraModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 62.0,
          right: 12.0,
          left: 12.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            HeadOfCustomizationScreens(
              title: AppStrings.selectEraHeaderScreen,
              style: Styles.styleSemiBold24(context).copyWith(fontSize: 36),
            ),
            EraDetailsBodyScreen(
              eraModel: eraModel,
            ),
          ],
        ),
      ),
    );
  }
}
