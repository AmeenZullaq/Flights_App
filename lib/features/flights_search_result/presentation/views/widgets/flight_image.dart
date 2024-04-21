import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_rating.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/airfield_name.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/passengers_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class FlightImage extends StatelessWidget {
  const FlightImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 243.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            Assets.imagesAirplaneTest,
          ),
        ),
      ),
      child: PaddingDynamic(
        top: 56,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PaddingSymetric(
              horizontal: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.imagesHeartStraightLiked,
                    ),
                  ),
                ],
              ),
            ),
            PaddingDynamic(
              bottom: 16,
              left: 16,
              right: 16,
              child: Row(
                children: [
                  const FlightRating(),
                  SizedBox(width: 8.w),
                  const AirfieldName(),
                  SizedBox(width: 8.w),
                  const PassengersNumber(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
