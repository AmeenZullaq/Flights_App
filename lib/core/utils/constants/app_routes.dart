import 'package:flights_app/features/auth/presentation/views/birth_date_view.dart';
import 'package:flights_app/features/auth/presentation/views/confirmation_view.dart';
import 'package:flights_app/features/auth/presentation/views/enter_name_view.dart';
import 'package:flights_app/features/auth/presentation/views/phone_number_view.dart';
import 'package:flights_app/features/payment/presentation/views/checkout_view.dart';
import 'package:flights_app/features/payment/presentation/views/success_payment_view.dart';
import 'package:flights_app/features/flights/presentation/views/flights_view.dart';
import 'package:flights_app/features/home/presentation/view/main_view.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/air_tour_details_view.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/air_tours_result_view.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/flights_details_view.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/reviews_view.dart';
import 'package:flights_app/features/profile/presentation/views/my_tickets_view.dart';
import 'package:flights_app/features/profile/presentation/views/notifications_view.dart';
import 'package:flights_app/features/profile/presentation/views/settings_view.dart';
import 'package:flights_app/features/profile/presentation/views/ticket_details_view.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const phoneNumberView = 'phoneNumberView';
  static const enterNameView = 'enterNameView';
  static const birthDateView = 'birthDateView';
  static const confirmationView = 'confirmationView';
  static const mainView = 'mainView';
  static const airToursResultView = 'airToursResultsView';
  static const airTourDetailsView = 'airTourDetailsView';
  static const reviewsView = 'reviewsView';
  static const checkoutView = 'checkoutView';
  static const successPaymentView = 'successPaymentView';
  static const flightsView = 'flightsView';
  static const flightDetailsView = 'flightDetailsView';
  static const notificationsView = 'notificationsView';
  static const myTicketsView = 'MyTicketsView';
  static const ticketDetailsView = 'ticketDetailsView';
  static const settingView = 'settingView';
}

abstract class Routing {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    Routes.phoneNumberView: (context) => const PhoneNumberView(),
    Routes.enterNameView: (context) => const EnterNameView(),
    Routes.birthDateView: (context) => const BirthDateView(),
    Routes.confirmationView: (context) => const ConfirmationView(),
    Routes.mainView: (context) => const MainView(),
    Routes.airToursResultView: (context) => const AirToursResultView(),
    Routes.airTourDetailsView: (context) => const AirTourDetailsView(),
    Routes.reviewsView: (context) => const ReviewsView(),
    Routes.checkoutView: (context) => const CheckoutView(),
    Routes.successPaymentView: (context) => const SuccessPaymentView(),
    Routes.flightsView: (context) => const FlightsView(),
    Routes.flightDetailsView: (context) => const FlightDetailsView(),
    Routes.notificationsView: (context) => const NotificationsView(),
    Routes.myTicketsView: (context) => const MyTicketsView(),
    Routes.ticketDetailsView: (context) => const TicketDetailsView(),
    Routes.settingView: (context) => const SettingsView(),
  };
}
