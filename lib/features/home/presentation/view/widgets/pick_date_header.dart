import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/search_filter_bottom_sheet.dart';
import 'package:flutter/material.dart';

class PickDateHeader extends StatelessWidget {
  const PickDateHeader({
    super.key,
    this.flag,
  });
  final bool? flag;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Select a date',
          style: AppStyles.styleSemiBold18.copyWith(
            color: AppColors.grey800,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
            if (flag == true) {
              getBottomSheet(
                context,
                child: const SearchFilterBottomSheet(),
              );
            }
          },
          icon: Icon(
            Icons.cancel,
            color: Colors.grey[300],
            size: 20,
          ),
          padding: EdgeInsets.zero,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        ),
      ],
    );
  }
}
