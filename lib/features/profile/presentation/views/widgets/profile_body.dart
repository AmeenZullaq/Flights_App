import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/user_info.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppContainer(
          width: double.infinity,
          bottomLeftRadius: 16,
          bottomRightRadius: 16,
          bottomPadding: 40,
          topPadding: 50,
          child: UserInfo(),
        ),
      ],
    );
  }
}
