import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class CustomAppbarForProfileScreens extends StatelessWidget {
  const CustomAppbarForProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: ()
        {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new, color: AppColors.secondaryColor,)),
        Spacer(flex: 1,),
        Text(
          "Edit Profile",
          style: Styles.styleBold24(
          context,
        ).copyWith(fontSize: 20.sp,),),
        Spacer(flex: 2,),
      ],
    );
  }
}
