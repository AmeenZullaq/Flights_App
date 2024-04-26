import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketInfo extends StatelessWidget {
  const TicketInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return StartPadding(
      start: 20,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Date of flight',
                style: AppStyles.styleRegular12.copyWith(
                  color: AppColors.grey500,
                ),
              ),
              const Spacer(),
              Text(
                'Airfield',
                style: AppStyles.styleRegular12.copyWith(
                  color: AppColors.grey500,
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Text(
                '30.02.2022',
                style: AppStyles.styleMedium12.copyWith(
                  color: AppColors.grey800,
                ),
              ),
              const Spacer(),
              Text(
                'Byche Polye',
                style: AppStyles.styleMedium12.copyWith(
                  color: AppColors.grey800,
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              Text(
                'Departure time',
                style: AppStyles.styleRegular12.copyWith(
                  color: AppColors.grey500,
                ),
              ),
              const Spacer(),
              Text(
                'Flight duration',
                style: AppStyles.styleRegular12.copyWith(
                  color: AppColors.grey500,
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Text(
                '13.30',
                style: AppStyles.styleMedium12.copyWith(
                  color: AppColors.grey800,
                ),
              ),
              const Spacer(),
              Text(
                '50 min',
                style: AppStyles.styleMedium12.copyWith(
                  color: AppColors.grey800,
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
