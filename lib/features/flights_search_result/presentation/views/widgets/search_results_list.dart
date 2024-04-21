import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/search_results_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const SearchResultsItem();
      },
      separatorBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              thickness: 2,
              color: AppColors.grey,
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        );
      },
    );
  }
}
