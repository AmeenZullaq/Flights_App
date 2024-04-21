import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Split the payment',
          style: AppStyles.styleBold24.copyWith(
            color: AppColors.blue,
          ),
        ),
        Text(
          'with other passengers',
          style: AppStyles.styleBold24.copyWith(
            color: AppColors.grey700,
          ),
        ),
      ],
    );
  }
}
