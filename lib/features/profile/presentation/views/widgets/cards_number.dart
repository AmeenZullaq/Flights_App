import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsNumber extends StatelessWidget {
  const CardsNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: 24.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.error500,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        '1',
        style: AppStyles.styleSemiBold10.copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
