import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/air_tour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultsItem extends StatelessWidget {
  const SearchResultsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AirTour(),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price per passengers',
              style: AppStyles.styleRegular12.copyWith(
                color: const Color(0xFF61676C),
              ),
            ),
            Container(
              height: 32.h,
              width: 78.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                '2000 \$',
                style: AppStyles.styleSemiBold16.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
