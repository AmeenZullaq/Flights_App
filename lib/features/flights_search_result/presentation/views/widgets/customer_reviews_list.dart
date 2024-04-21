import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/customer_reviews_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerReviewsList extends StatelessWidget {
  const CustomerReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10.h),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PaddingDynamic(
          bottom: 16,
          left: 20,
          right: 20,
          child: CustomerReviewsItem(),
        );
      },
    );
  }
}
