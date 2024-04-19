import 'package:flights_app/core/reusable_widgets/flight_search_input.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flights_app/features/home/presentation/view/widgets/date_bottom_sheet.dart';
import 'package:flights_app/core/reusable_widgets/counter_suffix_widget.dart';
import 'package:flights_app/features/home/presentation/view/widgets/extreme_airplane_text.dart';
import 'package:flights_app/features/home/presentation/view/widgets/search_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ExtremeAirplaneSection extends StatelessWidget {
  const ExtremeAirplaneSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      bottomLeftRadius: 16,
      bottomRightRadius: 16,
      leftPadding: 20,
      rightPadding: 20,
      bottomPadding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .085,
          ),
          const ExtremeAirplaneText(),
          SizedBox(
            height: 40.h,
          ),
          FlightSearchInput(
            firstOnTap: () {
              getBottomSheet(
                context,
                child: const SearchBottomSheet(),
              );
            },
            firstHint: 'Where to find an airplane tour?',
            firstPrefixWidget: SvgPicture.asset(
              Assets.imagesMapPin,
            ),
            secondOnTap: () {
              getBottomSheet(
                context,
                child: const DateBottomSheet(),
              );
            },
            secondtHint: 'Sunday, July 30',
            secondPrefixWidget: SvgPicture.asset(
              Assets.imagesCalendarBlank,
            ),
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
            text: 'Find tour',
            onTap: () {
              Navigator.pushNamed(context, RouteViews.airToursResultView);
            },
          ),
        ],
      ),
    );
  }
}
