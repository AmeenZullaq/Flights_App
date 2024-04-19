import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerReviewsItem extends StatelessWidget {
  const CustomerReviewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topLeftRadius: 6,
      topRightRadius: 6,
      bottomLeftRadius: 6,
      bottomRightRadius: 6,
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: const Color(0xFF475159).withOpacity(0.15),
          spreadRadius: 0,
          offset: const Offset(0, 3),
        )
      ],
      child: PaddingSymetric(
        vertical: 16.h,
        horizontal: 16.w,
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    Assets.imagesImages,
                    height: 44.h,
                    width: 44.w,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ivan',
                      style: AppStyles.styleMedium18,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'May 21,2022',
                      style: AppStyles.styleRegular12.copyWith(
                        color: const Color(0xFF82898F),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 19.h,
            ),
            const CustomRating(),
            SizedBox(
              height: 19.h,
            ),
            Text(
              'The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.',
              style: AppStyles.styleRegular14.copyWith(
                color: const Color(0xFF475467),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
