import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/search_filter_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SearchFormHeader extends StatelessWidget {
  const SearchFormHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFE4E7EC),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'St.Petersburg, July 30',
                  style: AppStyles.styleMedium16.copyWith(
                    color: AppColors.grey800,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    getBottomSheet(
                      context,
                      child: const SearchFilterBottomSheet(),
                    );
                  },
                  child: SvgPicture.asset(
                    Assets.imagesSlidersHorizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
