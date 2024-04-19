import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) {
              return EndPadding(
                end: 4,
                child: SvgPicture.asset(
                  Assets.imagesYellowStar,
                ),
              );
            },
          ),
        ),
        Text(
          '5',
          style: AppStyles.styleRegular12,
        ),
      ],
    );
  }
}
