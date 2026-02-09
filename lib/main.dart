import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poker_game_app/features/game/screen/game_screen.dart';
import 'package:poker_game_app/routes/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(PokerGame());
}

class PokerGame extends StatelessWidget {
  const PokerGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      // initialRoute: AppRoute.onboard,
      home: GameScreen(),
    );
  }
}
