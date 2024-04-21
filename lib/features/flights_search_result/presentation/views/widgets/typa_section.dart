import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/counter_suffix_widget.dart';
import 'package:flights_app/core/reusable_widgets/flight_search_input.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class TypaSection extends StatelessWidget {
  const TypaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topLeftRadius: 13,
      topRightRadius: 13,
      bottomLeftRadius: 13,
      bottomRightRadius: 13,
      child: PaddingDynamic(
        top: 24,
        left: 20,
        right: 20,
        bottom: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Параметры тура',
              style: AppStyles.styleSemiBold18.copyWith(
                color: AppColors.grey800,
              ),
            ),
            SizedBox(height: 16.h),
            FlightSearchInput(
              firstPrefixWidget: SvgPicture.asset(
                Assets.imagesCalendarBlank,
              ),
              firstHint: 'Saint-Petersburg',
              firstHintColor: AppColors.grey800,
              secondPrefixWidget: SvgPicture.asset(
                Assets.imagesSmileyWink,
              ),
              secondtHint: 'Passengers',
              secondHintColor: AppColors.grey800,
              secondSuffixWidget: const CounterSuffixWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
