import 'package:flights_app/features/search_result/presentation/views/widgets/all_reviews_button.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/customer_reviews.dart';
import 'package:flutter/material.dart';

class CustomerReviewsSection extends StatelessWidget {
  const CustomerReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomerReviews(),
        AllReviewsButton(),
      ],
    );
  }
}
