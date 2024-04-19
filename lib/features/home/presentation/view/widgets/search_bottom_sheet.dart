import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextField(
          hintText: 'Where to find an airplane tour?',
          prefixWidget: PaddingDynamic(
            left: 12,
            child: Icon(
              Icons.search,
              color: AppColors.blue,
              size: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            SvgPicture.asset(
              Assets.imagesGps,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'My location',
              style: AppStyles.styleMedium16.copyWith(
                color: const Color(0xFF1E252D),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
