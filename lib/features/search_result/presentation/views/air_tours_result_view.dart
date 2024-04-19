import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/air_tours_result_body.dart';
import 'package:flutter/material.dart';

class AirToursResultView extends StatelessWidget {
  const AirToursResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.grey,
      body: AirtoursResultBody(),
    );
  }
}
