import 'package:flights_app/core/reusable_widgets/app_bottom_navigation_bar.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/flights_result_body.dart';
import 'package:flutter/material.dart';

class FlightsResultView extends StatelessWidget {
  const FlightsResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 1),
      body: SingleChildScrollView(
        child: FlightsResultBody(),
      ),
    );
  }
}
