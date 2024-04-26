import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class NotificationsField extends StatelessWidget {
  const NotificationsField({
    super.key,
    required this.insideContainerColor,
    required this.assetName,
    required this.firstText,
    required this.secondText,
  });
  final Color insideContainerColor;
  final String assetName;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: insideContainerColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: SvgPicture.asset(
              assetName,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstText,
                style: AppStyles.styleMedium16.copyWith(
                  color: AppColors.grey800,
                ),
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                secondText,
                style: AppStyles.styleRegular12.copyWith(
                  color: AppColors.grey500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
