import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.color = AppColors.blue,
    this.textColor = AppColors.white,
    required this.text,
    required this.onTap,
    this.borderSideColor = AppColors.white,
  });
  final Color color;
  final Color textColor;
  final Color borderSideColor;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderSideColor,
          ),
        ),
        child: Text(
          text,
          style: AppStyles.styleMedium16.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
