import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PilotInfo extends StatelessWidget {
  const PilotInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            Assets.imagesImages,
            height: 52.h,
            width: 52.w,
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
              'Oleg Samsonov',
              style: AppStyles.styleMedium16,
            ),
            SizedBox(
              height: 8.h,
            ),
            const CustomRating(),
          ],
        ),
      ],
    );
  }
}
