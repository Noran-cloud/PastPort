import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/authentication/presentation/widgets/arrow_back_head_of_screens.dart';
import 'package:pastport/core/utils/app_styles.dart';

class HeadSettings extends StatelessWidget {
  const HeadSettings({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Row(
          children: [
            ArrowBackHeadOfScreens(),
            SizedBox(width: 40.w),
            Text(
              title,
              style: Styles.styleBold24(
                context,
              ).copyWith(fontSize: 20.sp,),
            ),
          ],
        ),
      ],
    );
  }
}
