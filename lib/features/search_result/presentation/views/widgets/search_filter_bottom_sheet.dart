import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flights_app/core/reusable_widgets/flight_search_input.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flights_app/core/reusable_widgets/counter_suffix_widget.dart';
import 'package:flights_app/features/home/presentation/view/widgets/date_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SearchFilterBottomSheet extends StatelessWidget {
  const SearchFilterBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlightSearchInput(
          firstHintColor: AppColors.black,
          secondHintColor: AppColors.black,
          firstHint: 'Saint-Petersburg',
          secondtHint: 'Sunday, July 30',
          firstPrefixWidget: SvgPicture.asset(
            Assets.imagesMapPin,
          ),
          secondPrefixWidget: SvgPicture.asset(
            Assets.imagesCalendarBlank,
          ),
          firstOnTap: () {},
          secondOnTap: () {
            Navigator.pop(context);
            getBottomSheet(
              context,
              child: const DateBottomSheet(flag: true),
            );
          },
        ),
        SizedBox(
          height: 16.h,
        ),
        AppContainer(
          leftPadding: 16,
          rightPadding: 16,
          topLeftRadius: 8,
          topRightRadius: 8,
          bottomLeftRadius: 8,
          bottomRightRadius: 8,
          boxShadow: AppStyles.textFieldShadow,
          child: AppTextField(
            enabledBorderSideColor: AppColors.white,
            focusedBorderSideColor: AppColors.white,
            prefixWidget: SvgPicture.asset(
              Assets.imagesSmileyWink,
            ),
            hintText: 'Passengers',
            hintTextColor: const Color(0xFF1D2939),
            suffixWidget: const CounterSuffixWidget(),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        AppButton(
          text: 'Apply',
          onTap: () {},
        ),
      ],
    );
  }
}
