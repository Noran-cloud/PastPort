import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/auth_utils/clipping_path_helpers/top_curve_clipper.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/content_of_first_container.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';

class TopPartLoginScreen extends StatelessWidget {
  const TopPartLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return Container(
          height: context.height * .55,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withValues(
                  alpha: 0.2,
                ),
                spreadRadius: 0,
                blurRadius: 15,
                offset: const Offset(4, -5),
              ),
            ],
          ),
          child: ClipPath(
            clipper: TopCurveClipper(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(33),
                  topRight: Radius.circular(33),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  right: 26,
                  left: 26,
                ),
                child: ContentOfFirstContainer(),
              ),
            ),
          ),
        );
  }
}
