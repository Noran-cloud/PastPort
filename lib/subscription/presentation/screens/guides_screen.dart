import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/authentication/data/models/register_model.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/screens/eras_screen.dart';
import 'package:pastport/subscription/presentation/widgets/frame_of_screens.dart';
import 'package:pastport/subscription/presentation/widgets/guides_screen_widgets/content_of_guides_screen.dart';
import 'package:pastport/subscription/presentation/widgets/guides_screen_widgets/exploration_button.dart';

class GuidesScreen extends StatelessWidget {
  const GuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FrameOfScreens(
        widget: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  children: [
                    ContentOfGuidesScreen(),
                    ExplorationButton(
                      horizontalPaddingButton: 55.0.w,
                      onTap: () {
                        context.navigate(ErasScreen());
                      },
                      text: AppStrings.startJourneyButtonText,
                      style: Styles.styleBold15(context).copyWith(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
