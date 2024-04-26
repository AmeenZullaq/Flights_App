import 'package:flights_app/features/profile/presentation/views/widgets/notifications_body.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: NotificationsBody(),
        ),
      ),
    );
  }
}
