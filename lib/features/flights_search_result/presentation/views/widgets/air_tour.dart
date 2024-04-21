import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_rating.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/airfield_name.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/heart_icon.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/passengers_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirTour extends StatelessWidget {
  const AirTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouteViews.airTourDetailsView);
          },
          child: Container(
            width: double.infinity,
            height: 160.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  Assets.imagesAirplaneTest,
                ),
              ),
            ),
            child: PaddingDynamic(
              bottom: 10,
              left: 10,
              right: 10,
              top: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeartIcon(),
                  Row(
                    children: [
                      const FlightRating(),
                      SizedBox(width: 8.w),
                      const AirfieldName(),
                      SizedBox(width: 8.w),
                      const PassengersNumber(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'Cessna 172 familiarization flight from kronstadt',
          style: AppStyles.styleSemiBold16.copyWith(
            color: const Color(0xFF323232),
          ),
        ),
      ],
    );
  }
}
