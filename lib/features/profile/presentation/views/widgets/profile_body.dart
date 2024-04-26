import 'package:flights_app/features/profile/presentation/views/widgets/profile_options.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/user_info.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfo(),
        SizedBox(
          height: 16,
        ),
        ProfileOptions(),
      ],
    );
  }
}
