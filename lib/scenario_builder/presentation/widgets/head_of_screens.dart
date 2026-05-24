import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';

class HeadOfCustomizationScreens extends StatelessWidget {
  const HeadOfCustomizationScreens({super.key, required this.title, required this.style});

  final String title;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.whiteColor.withValues(alpha: .2),
          child: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,),
          ),
        ),
        SizedBox(width: 8.0,),
        Text(
          title,
          style: style,
        ),
      ],
    );
  }
}
