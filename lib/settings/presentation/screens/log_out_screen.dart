import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/log_out_content.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class LogOutScreen extends StatelessWidget {
  const LogOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.logOutText),
            Spacer(flex: 1,),
            LogOutContent(),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
