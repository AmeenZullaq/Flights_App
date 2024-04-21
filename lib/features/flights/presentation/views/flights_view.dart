import 'package:flights_app/core/reusable_widgets/app_bottom_navigation_bar.dart';
import 'package:flights_app/features/flights/presentation/views/widgets/flights_body.dart';
import 'package:flutter/material.dart';

class FlightsView extends StatelessWidget {
  const FlightsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FlightsBody(),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 1),
    );
  }
}
