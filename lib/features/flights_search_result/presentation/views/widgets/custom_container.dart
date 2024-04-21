import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.topText,
    required this.bottomText,
    this.width,
  });
  final String topText;
  final String bottomText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: PaddingSymetric(
        horizontal: 8,
        vertical: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topText,
              style: AppStyles.styleRegular13.copyWith(
                color: const Color(0xFF667085),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              bottomText,
              style: AppStyles.styleMedium14.copyWith(
                color: AppColors.grey800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
