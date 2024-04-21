import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/flight_search_input.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../../core/reusable_widgets/counter_suffix_widget.dart';

class FlightInfoSection extends StatelessWidget {
  const FlightInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      bottomLeftRadius: 13,
      bottomRightRadius: 13,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FlightImage(),
          SizedBox(
            height: 24.h,
          ),
          PaddingSymetric(
            horizontal: 20,
            child: Text(
              'Novovsibirsk - baikal',
              style: AppStyles.styleSemiBold18.copyWith(
                color: AppColors.grey800,
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          PaddingDynamic(
            left: 20,
            right: 20,
            bottom: 20,
            child: FlightSearchInput(
              firstPrefixWidget: SvgPicture.asset(
                Assets.imagesCalendarBlank,
              ),
              firstHint: 'Sunday, July 30',
              firstHintColor: AppColors.grey800,
              secondPrefixWidget: SvgPicture.asset(
                Assets.imagesSmileyWink,
              ),
              secondtHint: 'Passengers',
              secondHintColor: AppColors.grey800,
              secondSuffixWidget: const CounterSuffixWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
