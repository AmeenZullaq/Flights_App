import 'package:flights_app/features/profile/presentation/views/widgets/ticket_details_body.dart';
import 'package:flutter/material.dart';

class TicketDetailsView extends StatelessWidget {
  const TicketDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: TicketDetailsBody(),
        ),
      ),
    );
  }
}
