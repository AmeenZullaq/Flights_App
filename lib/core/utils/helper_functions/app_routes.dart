import 'package:flights_app/core/utils/constants/route_views.dart';
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
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  RouteViews.phoneNumberView: (context) => const PhoneNumberView(),
  RouteViews.enterNameView: (context) => const EnterNameView(),
  RouteViews.birthDateView: (context) => const BirthDateView(),
  RouteViews.confirmationView: (context) => const ConfirmationView(),
  RouteViews.mainView: (context) => const MainView(),
  RouteViews.airToursResultView: (context) => const AirToursResultView(),
  RouteViews.airTourDetailsView: (context) => const AirTourDetailsView(),
  RouteViews.reviewsView: (context) => const ReviewsView(),
  RouteViews.checkoutView: (context) => const CheckoutView(),
  RouteViews.successPaymentView: (context) => const SuccessPaymentView(),
  RouteViews.flightsView: (context) => const FlightsView(),
  RouteViews.flightDetailsView: (context) => const FlightDetailsView(),
};
