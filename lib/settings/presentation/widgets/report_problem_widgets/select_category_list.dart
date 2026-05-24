import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class SelectProblemCategoryList extends StatefulWidget {
  const SelectProblemCategoryList({super.key});

  @override
  State<SelectProblemCategoryList> createState() =>
      _SelectProblemCategoryListState();
}

class _SelectProblemCategoryListState extends State<SelectProblemCategoryList> {
  String? selectedCategory;

  final categories = [
    'Account Issues',
    'Payment Problems',
    'Technical Bugs',
    'Performance Issues',
    'Feature Not Working',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerBackgroundColor.withValues(alpha: .40),
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.problemCategoryText,
              style: Styles.styleMedium10(context).copyWith(fontSize: 10.sp),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: DropdownMenu<String>(
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xffE4E6E9)),
                  maximumSize: WidgetStatePropertyAll(
                    Size.fromWidth(double.infinity),
                  ),
                  side: WidgetStatePropertyAll(
                    BorderSide(color: Color(0xff95BBD9), width: 1.5),
                  ),
                  padding: WidgetStatePropertyAll(EdgeInsets.only(left: 8.0)),
                ),
                width: double.infinity,
                initialSelection: selectedCategory,
                hintText: AppStrings.selectCategoryText,
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: AppColors.containerBackgroundColor.withValues(
                    alpha: .7,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide.none,
                  ),
                ),
                dropdownMenuEntries: categories.map((item) {
                  return DropdownMenuEntry(
                    value: item,
                    labelWidget: Text(
                      item,
                      style: Styles.styleMedium10(
                        context,
                      ).copyWith(color: Color(0xff6D6767), fontSize: 12.0.sp),
                    ),
                    label: item,
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.zero,
                      ),
                    ),
                  );
                }).toList(),
                onSelected: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
