import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/popular_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return EndPadding(
          end: 16.w,
          child: const PopularListItem(),
        );
      },
    );
  }
}
