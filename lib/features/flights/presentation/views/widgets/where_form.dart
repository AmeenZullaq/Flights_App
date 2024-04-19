import 'package:flights_app/core/reusable_widgets/flight_search_input.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/features/home/presentation/view/widgets/search_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class WhereForm extends StatelessWidget {
  const WhereForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        FlightSearchInput(
          firstPrefixWidget: SvgPicture.asset(
            Assets.imagesMapPin,
          ),
          secondPrefixWidget: SvgPicture.asset(
            Assets.imagesMapPin,
          ),
          firstHint: 'From where?',
          secondtHint: 'Where to?',
          firstOnTap: () {
            const SearchBottomSheet();
          },
          secondOnTap: () {
            const SearchBottomSheet();
          },
        ),
        EndPadding(
          end: 16,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: const Offset(0, 4),
                  color: const Color(0xFF000000).withOpacity(0.25),
                ),
              ],
            ),
            child: SvgPicture.asset(
              Assets.imagesGroup,
            ),
          ),
        ),
      ],
    );
  }
}
