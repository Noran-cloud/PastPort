import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

/// SECTION TITLE
Widget sectionTitle(String title, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 22),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: Styles.styleSemiBold24(context).copyWith(
          fontSize: 16.0,
          color: AppColors.secondaryColor.withValues(alpha: .8),
        ),
      ),
    ),
  );
}

/// CONTAINER
Widget customContainer({required List<Widget> children}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

    child: Container(
      width: double.infinity,

      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: .25),
        borderRadius: BorderRadius.circular(6),
      ),

      child: Column(children: children),
    ),
  );
}

/// ITEM
Widget settingItem({
  required IconData icon,
  required String title,
  required void Function()? onTap,
  required context,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: AppColors.secondaryColor.withValues(alpha: .8),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: Text(
            title,
            style: Styles.styleSemiBold24(context).copyWith(
              fontSize: 16.0,
              color: AppColors.secondaryColor.withValues(alpha: .8),
            ),
          ),
        ),
      ],
    ),
  );
}
