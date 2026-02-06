import 'package:flutter/material.dart';
import 'package:poker_game_app/features/auth/sign_in.dart';
import 'package:poker_game_app/features/game/screen/gaem_screen.dart';
import 'package:poker_game_app/features/onboard/onboard.dart';

class AppRoute {
  static const onboard = '/onboard';
  static const signInScreen = '/signin/screen';
  static const tournamentScreen = '/tournament/screen';
  static const gameScreen = '/game/screen';
}

final Map<String, WidgetBuilder> appRoutes = {
  AppRoute.onboard: (context) => Onboard(),
  AppRoute.signInScreen: (context) => const SignInScreen(),
  AppRoute.gameScreen: (context) => const GaemScreen(),
};
