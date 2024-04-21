import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllReviewsButton extends StatelessWidget {
  const AllReviewsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 12,
      left: 20,
      right: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RouteViews.reviewsView);
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.h),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 28,
                offset: Offset(0, -12),
                spreadRadius: 14,
                color: AppColors.white,
              ),
            ],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            border: const Border.fromBorderSide(
              BorderSide(
                color: AppColors.blue,
              ),
            ),
          ),
          child: Text(
            'All reviews',
            style: AppStyles.styleMedium16.copyWith(
              color: AppColors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
