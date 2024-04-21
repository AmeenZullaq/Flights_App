import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/search_form_header.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/search_results_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightsResultBody extends StatelessWidget {
  const FlightsResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      top: 24.h,
      left: 20.w,
      right: 20.w,
      bottom: 40.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchFormHeader(),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Search results',
            style: AppStyles.styleBold20.copyWith(
              color: const Color(0xFF1E252D),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          const SearchResultsList(),
          AppButton(
            text: 'Show more',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
