import 'package:flights_app/features/favorites/presentation/views/favorites_view.dart';
import 'package:flights_app/features/flights/presentation/views/flights_view.dart';
import 'package:flights_app/features/home/presentation/view/main_view.dart';
import 'package:flights_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

abstract class AppConstants {
  static const List<Widget> views = [
    MainView(),
    FlightsView(),
    FavoritesView(),
    ProfileView(),
  ];
}
