import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirTourInfoSection extends StatelessWidget {
  const AirTourInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      bottomLeftRadius: 13,
      bottomRightRadius: 13,
      child: Column(
        children: [
          const FlightImage(),
          SizedBox(height: 24.h),
          PaddingSymetric(
            horizontal: 20,
            child: Text(
              'Cessna 172 familiarization flight from Kronstadt',
              style: AppStyles.styleSemiBold18.copyWith(
                color: AppColors.grey800,
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          PaddingSymetric(
            horizontal: 20,
            child: Text(
              'An exciting flight in a Cessna 172 sightseeing airplane over the neighborhood of the airfield. The flight includes performance of simple aerobatics figures and short-term weightlessness mode.',
              style: AppStyles.styleRegular14.copyWith(
                color: const Color(0xFF475467),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
