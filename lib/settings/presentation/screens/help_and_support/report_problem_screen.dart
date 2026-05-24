import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/controllers/setting_cubit/setting_cubit.dart';
import 'package:pastport/settings/presentation/controllers/setting_cubit/setting_states.dart';
import 'package:pastport/settings/presentation/widgets/contact_support_widgets/responding_times.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/content_of_report_problem_screen.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/describe_problem_container.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/information_report_problem.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/select_category_list.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class ReportProblemScreen extends StatelessWidget {
  const ReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SettingCubit(),
      child: Scaffold(
        body: ScreensBasic(
          content: SingleChildScrollView(
            child: ContentOfReportProblemScreen(),
          ),
        ),
      ),
    );
  }
}