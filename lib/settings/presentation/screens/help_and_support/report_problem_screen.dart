import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/contact_support_widgets/responding_times.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/describe_problem_container.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/information_report_problem.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/select_category_list.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class ReportProblemScreen extends StatelessWidget {
  const ReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: SingleChildScrollView(
          child: Column(
            children: [
              HeadSettings(title: AppStrings.reportProblemScreenTitle),
              SizedBox(height: 60.h),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, left: 45.0, bottom: 20.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.containerBackgroundColor.withValues(
                          alpha: .40,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.question_mark, color: Color(0xffEB8B61),),
                            SizedBox(width: 2.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.helpImproveText,
                                    style: Styles.styleMedium10(context),
                                  ),
                                  Text(
                                    maxLines: 2,
                                    AppStrings.helpImproveDescText,
                                    style: Styles.styleMedium10(
                                      context,
                                    ).copyWith(color: Color(0xffEB8B61), overflow: TextOverflow.ellipsis,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0,),
                    SelectProblemCategoryList(),
                    SizedBox(height: 12.0,),
                    DescribeProblemContainer(),
                    SizedBox(height: 12.0,),
                    InformationReportProblem(),
                    SizedBox(height: 12.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.containerBackgroundColor.withValues(
                          alpha: .40,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppStrings.footerText,
                          style: Styles.styleFaqMedium10(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
