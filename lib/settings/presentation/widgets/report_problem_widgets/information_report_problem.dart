import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/contact_support_widgets/responding_times.dart';

class InformationReportProblem extends StatelessWidget {
  const InformationReportProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerBackgroundColor.withValues(
          alpha: .40,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.additionalInfoText,
              style: Styles.styleSemiBold12(
                context,
                false,
              ).copyWith(color: AppColors.blackColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                color: Color(0xffD9D9D9),
                width: double.infinity,
                height: 1.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9.0),
              child: RespondingTimes(
                days: AppStrings.appVersionTitle,
                hours: AppStrings.appVersionVal,
                daysStyle: Styles.styleRegular14(
                  context,
                ).copyWith(color: AppColors.blackColor, fontSize: 12.0),
                hoursStyle: Styles.styleSemiBold20(
                  context,
                ).copyWith(fontSize: 10.0, color: AppColors.blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9.0),
              child: RespondingTimes(
                days: AppStrings.deviceText,
                hours: AppStrings.mobileText,
                daysStyle: Styles.styleRegular14(
                  context,
                ).copyWith(color: AppColors.blackColor, fontSize: 12.0),
                hoursStyle: Styles.styleSemiBold20(
                  context,
                ).copyWith(fontSize: 10.0, color: AppColors.blackColor),
              ),
            ),
            RespondingTimes(
              days: AppStrings.dateText,
              hours: AppStrings.dateValue,
              daysStyle: Styles.styleRegular14(
                context,
              ).copyWith(color: AppColors.blackColor, fontSize: 12.0),
              hoursStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(fontSize: 10.0, color: AppColors.blackColor),
            ),
          ],
        ),
      ),
    );
  }
}
