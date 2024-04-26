import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.arrow_left,
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: AppStyles.styleMedium16.copyWith(
            color: AppColors.grey800,
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        const Spacer(),
      ],
    );
  }
}
