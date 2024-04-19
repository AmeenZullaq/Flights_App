import 'package:flights_app/features/flights/presentation/views/widgets/flights_body.dart';
import 'package:flutter/material.dart';

class FlightsView extends StatelessWidget {
  const FlightsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FlightsBody(),
    );
  }
}
