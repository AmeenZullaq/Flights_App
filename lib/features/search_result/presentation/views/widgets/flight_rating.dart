import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class FlightRating extends StatelessWidget {
  const FlightRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      topLeftRadius: 50,
      bottomLeftRadius: 50,
      bottomRightRadius: 50,
      topRightRadius: 50,
      topPadding: 4,
      bottomPadding: 4,
      leftPadding: 8,
      rightPadding: 10,
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.imagesBlackStar,
          ),
          SizedBox(width: 4.w),
          Text(
            '4.7',
            style: AppStyles.styleRegular10,
          ),
        ],
      ),
    );
  }
}
