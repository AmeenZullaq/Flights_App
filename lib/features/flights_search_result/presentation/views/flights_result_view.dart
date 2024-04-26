import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flights_result_body.dart';
import 'package:flutter/material.dart';

class FlightsResultView extends StatelessWidget {
  const FlightsResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: FlightsResultBody(),
      ),
    );
  }
}
