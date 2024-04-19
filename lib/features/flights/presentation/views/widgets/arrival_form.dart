import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flights_app/features/home/presentation/view/widgets/date_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ArrivalForm extends StatelessWidget {
  const ArrivalForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      leftPadding: 16,
      rightPadding: 16,
      topLeftRadius: 8,
      topRightRadius: 8,
      bottomLeftRadius: 8,
      bottomRightRadius: 8,
      boxShadow: AppStyles.textFieldShadow,
      child: AppTextField(
        readOnly: true,
        enabledBorderSideColor: AppColors.white,
        focusedBorderSideColor: AppColors.white,
        prefixWidget: SvgPicture.asset(
          Assets.imagesCalendarBlank,
        ),
        hintText: 'Date of arrival',
        onTap: () {
          getBottomSheet(
            context,
            child: const DateBottomSheet(),
          );
        },
      ),
    );
  }
}
