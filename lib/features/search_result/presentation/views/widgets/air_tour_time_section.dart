import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/flight_duration_list.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/flight_route.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/start_of_flight_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirTourTimeSection extends StatelessWidget {
  const AirTourTimeSection({super.key});

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
        bottom: 24,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flight duration',
              style: AppStyles.styleSemiBold18,
            ),
            SizedBox(
              height: 16.h,
            ),
            const FlightDurationList(),
            SizedBox(
              height: 60.h,
            ),
            Text(
              'Start of flight',
              style: AppStyles.styleSemiBold18,
            ),
            SizedBox(
              height: 16.h,
            ),
            const StartOfFlightList(),
            SizedBox(
              height: 60.h,
            ),
            const FlightRoute(),
          ],
        ),
      ),
    );
  }
}
