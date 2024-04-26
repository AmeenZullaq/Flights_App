import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketImage extends StatelessWidget {
  const TicketImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        width: double.infinity,
        fit: BoxFit.fill,
        Assets.imagesAirplaneTest,
        height: 193.h,
      ),
    );
  }
}
