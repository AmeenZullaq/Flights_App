import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/bottom_navigation_bar_items.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    this.onSelectedItem,
  });
  final int currentIndex;
  final void Function(int)? onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 0,
            offset: const Offset(0, 3),
            color: const Color(0xFF475159).withOpacity(0.15),
          ),
        ],
      ),
      height: MediaQuery.sizeOf(context).height * .11,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: const Color(0xFF82898F),
          showUnselectedLabels: true,
          selectedLabelStyle: AppStyles.styleRegular10,
          unselectedLabelStyle: AppStyles.styleRegular10,
          currentIndex: currentIndex,
          onTap: onSelectedItem,
          items: bottomNavigationBaritems(currentIndex),
        ),
      ),
    );
  }
}
