import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/screens/location_selection_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/era_details.dart';
import 'package:pastport/scenario_builder/presentation/widgets/header_text_of_screens.dart';
import 'package:pastport/subscription/presentation/widgets/guides_screen_widgets/exploration_button.dart';

class EraDetailsBodyScreen extends StatelessWidget {
  const EraDetailsBodyScreen({super.key, required this.eraModel});

  final EraModel eraModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTextOfScreens(text: eraModel.headTitle),
        EraDetails(
          eraModel: eraModel,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ExplorationButton(
            horizontalPaddingButton: 64.0,
            onTap: () {
              context.navigate(LocationSelectionScreen(
                eraModel: eraModel,
              ));
            },
            text: AppStrings.exploreEraButton,
            style: Styles.styleBold24(
              context,
            ).copyWith(color: AppColors.whiteColor),
          ),
        ),
      ],
    );
  }

}
