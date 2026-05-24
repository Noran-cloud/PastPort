import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/controllers/setting_cubit/setting_cubit.dart';
import 'package:pastport/settings/presentation/controllers/setting_cubit/setting_states.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/describe_problem_container.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/information_report_problem.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/report_success_container.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/select_category_list.dart';

class ContentOfReportProblemScreen extends StatelessWidget {
  const ContentOfReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingStates>(
      builder: (BuildContext context, state) {
        return Column(
          children: [
            HeadSettings(title: AppStrings.reportProblemScreenTitle),
            SizedBox(height: 60.h),
            SettingCubit.get(context).notSend == true ?
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 45.0, bottom: 20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.containerBackgroundColor.withValues(
                        alpha: .40,
                      ),
                      borderRadius: BorderRadius.circular(5.0.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.question_mark, color: Color(0xffEB8B61),),
                          SizedBox(width: 2.0.w),
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
                  SizedBox(height: 12.0.h,),
                  SelectProblemCategoryList(),
                  SizedBox(height: 12.0.h,),
                  DescribeProblemContainer(),
                  SizedBox(height: 12.0.h,),
                  InformationReportProblem(),
                  BlocBuilder<SettingCubit, SettingStates>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: CustomButton(
                            borderColor: Color(0xffEB8B61),
                            buttonColor: Color(0xffEB8B61),
                            radius: 5.0.r,
                            height: 32.h,
                            onPressed: ()
                            {
                              SettingCubit.get(context).reportProblem();
                            },
                            buttonText: "Submit Report",
                            textStyle: Styles.styleSemiBold20(context).copyWith(
                                fontSize: 11.0.sp
                            ),
                          ),
                        );
                      }
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.containerBackgroundColor.withValues(
                        alpha: .40,
                      ),
                      borderRadius: BorderRadius.circular(5.0.r),
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
            ) :
            ReportSuccessContainer(),
          ],
        );
      },

    );
  }
}
