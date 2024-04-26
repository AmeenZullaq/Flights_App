import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/customer_reviews_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.arrow_left,
          ),
        ),
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        elevation: 0,
        title: Text(
          'Customer reviews',
          style: AppStyles.styleMedium16.copyWith(
            color: AppColors.grey800,
          ),
        ),
        centerTitle: true,
      ),
      body: const TopPadding(
        top: 16,
        child: CustomerReviewsList(),
      ),
    );
  }
}
