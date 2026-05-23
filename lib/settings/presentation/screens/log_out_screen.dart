import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
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
            Container(
              height: 250,
              width: 250,
              color: Colors.grey,
            ),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
