import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/customer_reviews_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerReviews extends StatelessWidget {
  const CustomerReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topLeftRadius: 13,
      topRightRadius: 13,
      bottomLeftRadius: 13,
      bottomRightRadius: 13,
      child: PaddingDynamic(
        top: 24,
        bottom: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StartPadding(
              start: 20,
              child: Text(
                'Customer reviews',
                style: AppStyles.styleSemiBold18.copyWith(
                  color: AppColors.grey800,
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              height: 308.h,
              child: const CustomerReviewsList(),
            ),
          ],
        ),
      ),
    );
  }
}
