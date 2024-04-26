import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_routes.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ticket extends StatelessWidget {
  const Ticket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.ticketDetailsView);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '673-843',
                  style: AppStyles.styleMedium16.copyWith(
                    color: AppColors.grey800,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    '10000 \$',
                    style: AppStyles.styleMedium12.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Cessna 172 familiarization flight from kronstadt',
              style: AppStyles.styleRegular12.copyWith(
                color: AppColors.grey800,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Airfield: Bychye Polye, July 30th',
              style: AppStyles.styleRegular12.copyWith(
                color: AppColors.grey500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
