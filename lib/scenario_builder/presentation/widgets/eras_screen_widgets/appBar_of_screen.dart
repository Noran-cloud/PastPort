import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/screens/setting_screen.dart';

class AppbarOfScreen extends StatelessWidget {
  const AppbarOfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primaryColor,
      title: Row(
        children: [
          Text(
            "PastP",
            style: Styles.styleSemiBold24(
              context,
            ).copyWith(fontSize: 32, color: AppColors.secondaryColor),
          ),
          Image.asset(Assets.iconNameImage, height: 19.28, width: 19.07),
          Text(
            "ort",
            style: Styles.styleSemiBold24(
              context,
            ).copyWith(fontSize: 32, color: AppColors.secondaryColor),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: ()
            {
              context.navigate(
                SettingScreen(),
              );
            },
            child: CircleAvatar(
              radius: 21,
              backgroundColor: AppColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
