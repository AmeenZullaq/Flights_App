import 'package:flights_app/features/flights_search_result/presentation/views/widgets/air_tours_section.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/popular_flights_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirtoursResultBody extends StatelessWidget {
  const AirtoursResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PopularFlightsSection(),
          SizedBox(
            height: 16.h,
          ),
          const AirToursSection(),
        ],
      ),
    );
  }
}
