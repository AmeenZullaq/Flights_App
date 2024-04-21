import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class FlightRoute extends StatelessWidget {
  const FlightRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Flight route',
          style: AppStyles.styleSemiBold18.copyWith(
            color: AppColors.grey800,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        EndPadding(
          end: 20,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: PaddingSymetric(
              horizontal: 12,
              vertical: 12,
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.imagesMap,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    'Airfield: Bychye Polye',
                    style: AppStyles.styleRegular14.copyWith(
                      color: AppColors.grey800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
