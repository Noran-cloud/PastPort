import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/list_of_images.dart';

class EraDetails extends StatelessWidget {
  const EraDetails({
    super.key,
    required this.eraModel,
  });

  final EraModel eraModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListOfImages(
          details_1: eraModel.images[0],
          details_2: eraModel.images[1],
          details_3: eraModel.images[2],
          details_4: eraModel.images[3],
        ),
        SizedBox(height: 12.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            textAlign: TextAlign.center,
            eraModel.description,
            style: Styles.styleMedium16(context).copyWith(
              fontSize: 16.0,
              color: AppColors.secondaryColor.withValues(alpha: .8),
            ),
          ),
        ),
      ],
    );
  }
}
