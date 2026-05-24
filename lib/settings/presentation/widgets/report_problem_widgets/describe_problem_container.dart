import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class DescribeProblemContainer extends StatelessWidget {
  const DescribeProblemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.containerBackgroundColor.withValues(
          alpha: .40,
        ),
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings.describeProblem,
                  style: Styles.styleMedium10(context),
                ),
                TextSpan(
                  text: AppStrings.requiredText,
                  style: Styles.styleMedium10(context).copyWith(
                      color: Color(0xff3B5998),
                      fontSize: 8.sp
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          /// TEXT FIELD
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: AppColors.containerBackgroundColor.withValues(
                alpha: .40,
              ),
              borderRadius: BorderRadius.circular(5.0.r),
            ),
            child: Column(
              children: [
                TextFormField(
                  maxLines: 5,
                  minLines: 5,
                  style: Styles.styleMedium16(context),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:
                    AppStrings.textFieldHint,
                    hintStyle: Styles.styleRegular10(context).copyWith(
                      fontSize: 8.0.sp,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    AppStrings.minCharText,
                    style: Styles.styleRegular14(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
