import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ReportSuccessContainer extends StatelessWidget {
  const ReportSuccessContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: context.height * .25),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withValues(alpha: .06),
          borderRadius: BorderRadius.circular(5.0.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(Assets.communicationIcon, width: 33.0, height: 33.0,),
              SizedBox(
                height: 30.0.h,
              ),
              Text(
                textAlign: TextAlign.center,
                AppStrings.reportSendSuccess,
                style: Styles.styleRegular16(context).copyWith(color: AppColors.blackColor),),
            ],
          ),
        ),
      ),
    );
  }
}
