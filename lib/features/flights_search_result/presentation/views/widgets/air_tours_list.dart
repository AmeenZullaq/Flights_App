import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/air_tour.dart';
import 'package:flutter/material.dart';

class AirToursList extends StatelessWidget {
  const AirToursList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return const BottomPadding(
          bottom: 24,
          child: AirTour(),
        );
      },
    );
  }
}
