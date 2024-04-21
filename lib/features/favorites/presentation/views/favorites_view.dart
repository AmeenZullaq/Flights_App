import 'package:flights_app/core/reusable_widgets/app_bottom_navigation_bar.dart';
import 'package:flights_app/features/favorites/presentation/views/widgets/favortites_body.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoritesBody(),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 2),
    );
  }
}
