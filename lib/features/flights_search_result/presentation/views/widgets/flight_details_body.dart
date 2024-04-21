import 'package:flights_app/features/flights_search_result/presentation/views/widgets/book_section.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/customer_reviews_section.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_info_section.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_time_section.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/pilot_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightDetailsBody extends StatelessWidget {
  const FlightDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FlightInfoSection(),
        SizedBox(
          height: 16.h,
        ),
        const FlightTimeSection(),
        SizedBox(
          height: 16.h,
        ),
        const PilotInfoSection(),
        SizedBox(
          height: 16.h,
        ),
        const CustomerReviewsSection(),
        SizedBox(
          height: 30.h,
        ),
        const BookSection(),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
