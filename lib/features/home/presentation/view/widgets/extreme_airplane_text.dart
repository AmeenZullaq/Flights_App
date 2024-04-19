import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class ExtremeAirplaneText extends StatelessWidget {
  const ExtremeAirplaneText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Extreme',
          style: AppStyles.styleBold30.copyWith(
            color: AppColors.blue,
          ),
        ),
        Text(
          'airplane flight',
          style: AppStyles.styleBold30,
        ),
      ],
    );
  }
}
