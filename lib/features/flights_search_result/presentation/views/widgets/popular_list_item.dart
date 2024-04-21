import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularListItem extends StatelessWidget {
  const PopularListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: SizedBox(
            height: 118.h,
            width: 118.w,
            child: Image.asset(
              Assets.imagesAirplaneTest,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          'Extreme flight',
          style: AppStyles.styleRegular14.copyWith(
            color: AppColors.grey800,
          ),
        ),
      ],
    );
  }
}
