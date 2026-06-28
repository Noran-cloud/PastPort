import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/screens/era_details_screen.dart';

class EraCardWidget extends StatelessWidget {
  const EraCardWidget({super.key, required this.eraModel});

  final EraModel eraModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        context.navigate(EraDetailsScreen(eraModel: eraModel,));
      },
      child: Column(
        children: [
          Image.asset(
            eraModel.cover,
            height: context.height * .25,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
            eraModel.title,
            style: Styles.styleSemiBold24(
              context,
            ).copyWith(fontSize: 24, color: AppColors.secondaryColor),
          ),
          Text(
            eraModel.subTitle,
            style: Styles.styleMedium10(context).copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
