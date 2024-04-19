import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/air_tours_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirToursSection extends StatelessWidget {
  const AirToursSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topLeftRadius: 16,
      topRightRadius: 16,
      topPadding: 24,
      bottomPadding: 32,
      leftPadding: 20,
      rightPadding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Air tours',
            style: AppStyles.styleBold20,
          ),
          SizedBox(
            height: 24.h,
          ),
          const AirToursList(),
          const Divider(
            thickness: 2,
            color: Color(0xFFF2F4F7),
          ),
          SizedBox(height: 24.h),
          AppButton(
            text: 'Show more',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
