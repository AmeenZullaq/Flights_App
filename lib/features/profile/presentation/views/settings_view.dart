import 'package:flights_app/features/profile/presentation/views/widgets/settings_body.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SettingsBody(),
      ),
    );
  }
}
