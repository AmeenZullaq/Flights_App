import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

List<BottomNavigationBarItem> bottomNavigationBaritems(int currentIndex) {
  return [
    BottomNavigationBarItem(
      label: 'Explore',
      icon: SvgPicture.asset(
        Assets.imagesRouting,
        colorFilter: ColorFilter.mode(
          currentIndex == 0 ? AppColors.blue : const Color(0xFF82898F),
          BlendMode.srcIn,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: 'Flights',
      icon: SvgPicture.asset(
        Assets.imagesAirplane,
        colorFilter: ColorFilter.mode(
          currentIndex == 1 ? AppColors.blue : const Color(0xFF82898F),
          BlendMode.srcIn,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: 'Favorites',
      icon: SvgPicture.asset(
        Assets.imagesLovely,
        colorFilter: ColorFilter.mode(
          currentIndex == 2 ? AppColors.blue : const Color(0xFF82898F),
          BlendMode.srcIn,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: 'Profile',
      icon: SvgPicture.asset(
        Assets.imagesProfile,
        colorFilter: ColorFilter.mode(
          currentIndex == 3 ? AppColors.blue : const Color(0xFF82898F),
          BlendMode.srcIn,
        ),
      ),
    ),
  ];
}
