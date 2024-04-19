import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/popular_list_view.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/search_form_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularFlightsSection extends StatelessWidget {
  const PopularFlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      bottomLeftRadius: 16,
      bottomRightRadius: 16,
      bottomPadding: 32,
      leftPadding: 20,
      topPadding: 35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EndPadding(
            end: 20,
            child: SearchFormHeader(),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            'Popular',
            style: AppStyles.styleBold20,
          ),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 150.h,
            child: const PopularListView(),
          ),
        ],
      ),
    );
  }
}
