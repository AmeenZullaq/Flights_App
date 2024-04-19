import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/home/presentation/view/widgets/suffix_container.dart';
import 'package:flutter/cupertino.dart';

class CounterSuffixWidget extends StatelessWidget {
  const CounterSuffixWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SuffixContainer(
          onTap: () {},
          child: const Icon(
            CupertinoIcons.minus,
            size: 16,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          '1',
          style: AppStyles.styleMedium24,
        ),
        const SizedBox(width: 16),
        SuffixContainer(
          onTap: () {},
          child: const Icon(
            CupertinoIcons.add,
            size: 16,
          ),
        ),
      ],
    );
  }
}
