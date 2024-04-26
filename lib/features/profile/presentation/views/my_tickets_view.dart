import 'package:flights_app/features/profile/presentation/views/widgets/my_tickets_body.dart';
import 'package:flutter/material.dart';

class MyTicketsView extends StatelessWidget {
  const MyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MyTicketsBody(),
      ),
    );
  }
}
