import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/features/home/presentation/view/widgets/helpful_info_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpfulInfoSection extends StatelessWidget {
  const HelpfulInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topPadding: 24,
      leftPadding: 20,
      bottomPadding: 20,
      topLeftRadius: 16,
      topRightRadius: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Helpful information',
            style: AppStyles.styleBold20.copyWith(
              color: AppColors.grey800,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 135.h,
            child: const HelpfulInfoListView(),
          ),
        ],
      ),
    );
  }
}
