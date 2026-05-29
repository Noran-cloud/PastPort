import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class PlanCardWidget extends StatelessWidget {
  const PlanCardWidget({
    super.key,
    required this.planTitle,
    required this.planDescription,
    this.onTap,
    required this.color,
    required this.price,
    required this.currency,
  });

  final String planTitle;
  final String planDescription;
  final double price;
  final String currency;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0, left: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.0),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      planTitle,
                      style: Styles.styleSemiBold20(
                        context,
                      ).copyWith(fontSize: 18, color: AppColors.secondaryColor),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff26CB63),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "$price",
                            style: Styles.styleMedium16(
                              context,
                            ).copyWith(fontSize: 10, color: AppColors.whiteColor),
                          ),
                          Text(
                            currency,
                            style: Styles.styleMedium16(
                              context,
                            ).copyWith(fontSize: 10, color: AppColors.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  planDescription,
                  style: Styles.styleRegular14(
                    context,
                  ).copyWith(fontSize: 14, color: AppColors.secondaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
