import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/flight_details_body.dart';
import 'package:flutter/material.dart';

class FlightDetailsView extends StatelessWidget {
  const FlightDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.grey,
      body: SingleChildScrollView(
        child: FlightDetailsBody(),
      ),
    );
  }
}
