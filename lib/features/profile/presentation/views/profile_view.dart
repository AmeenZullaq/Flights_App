import 'package:flights_app/core/reusable_widgets/app_bottom_navigation_bar.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.grey,
      body: ProfileBody(),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 3),
    );
  }
}
