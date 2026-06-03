import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/controllers/log_out_cubit/log_out_cubit.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/log_out_content.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class LogOutScreen extends StatelessWidget {
  const LogOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LogOutCubit(),
      child: Scaffold(
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
      ),
    );
  }
}
