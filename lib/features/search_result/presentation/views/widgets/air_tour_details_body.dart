import 'package:flights_app/features/search_result/presentation/views/widgets/air_tour_info_section.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/book_section.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/customer_reviews_section.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/air_tour_time_section.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/pilot_info_section.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/typa_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirTourDetailsBody extends StatelessWidget {
  const AirTourDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AirTourInfoSection(),
        SizedBox(
          height: 16.h,
        ),
        const TypaSection(),
        SizedBox(
          height: 16.h,
        ),
        const AirTourTimeSection(),
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
