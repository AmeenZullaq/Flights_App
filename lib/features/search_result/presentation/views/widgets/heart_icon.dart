import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.imagesHeartStraight,
          ),
        ),
      ],
    );
  }
}
