import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/home/presentation/view/widgets/helpful_info_item.dart';
import 'package:flutter/material.dart';

class HelpfulInfoListView extends StatelessWidget {
  const HelpfulInfoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return const EndPadding(
          end: 8,
          child: HelpfulInfoItem(),
        );
      },
    );
  }
}
