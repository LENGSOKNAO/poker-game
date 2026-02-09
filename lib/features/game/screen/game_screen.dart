import 'package:flutter/material.dart';
import 'package:poker_game_app/core/data/player_data.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          _bg(),
          _logo(context),

          _card(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.55),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white.withOpacity(0.25)),
              ),
              child: Text(
                "\$2,000",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ),

          _player(
            nu: 0,
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.15,
          ),
          _player(
            nu: 1,
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          _player(
            nu: 2,
            top: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          _player(
            nu: 3,
            bottom: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.15,
          ),

          _player(
            nu: 4,
            top: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.width * 0.15,
          ),
          _player(
            nu: 5,
            top: MediaQuery.of(context).size.height * 0.25,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          _player(
            nu: 8,
            top: MediaQuery.of(context).size.height * 0.55,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          _player(
            nu: 7,
            bottom: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.width * 0.15,
          ),

          _mainPlayer(
            nu: 7,
            bottom: MediaQuery.of(context).size.height * 0.05,
            right: 0,
            left: 0,
          ),
        ],
      ),
    );
  }

  Align _card() {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 50, child: Image.asset('assets/4.webp')),
          SizedBox(width: 50, child: Image.asset('assets/4.webp')),
          SizedBox(width: 50, child: Image.asset('assets/4.webp')),
          SizedBox(width: 50, child: Image.asset('assets/4.webp')),
          SizedBox(width: 50, child: Image.asset('assets/4.webp')),
        ],
      ),
    );
  }

  Widget _player({
    required int nu,
    double? left,
    double? right,
    double? bottom,
    double? top,
  }) {
    final singlePlayer = players.length > nu ? players[nu] : null;

    if (singlePlayer == null) {
      return const SizedBox.shrink();
    }

    return Positioned(
      left: left,
      right: right,
      bottom: bottom,
      top: top,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(singlePlayer.avatarUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.translate(
                    offset: const Offset(-1, 5),
                    child: Image.asset(
                      ImagePokerGame.visible,
                      width: 25,
                      height: 25,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-18, 5),
                    child: Image.asset(
                      ImagePokerGame.visible,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 6),

          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: Text(
                '\$${singlePlayer.chips}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mainPlayer({
    required int nu,
    double? left,
    double? right,
    double? bottom,
    double? top,
  }) {
    final singlePlayer = players.length > nu ? players[nu] : null;

    if (singlePlayer == null) {
      return const SizedBox.shrink();
    }

    return Positioned(
      left: left,
      right: right,
      bottom: bottom,
      top: top,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(singlePlayer.avatarUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.translate(
                    offset: const Offset(10, 5),
                    child: Image.asset('assets/4.webp', width: 40, height: 40),
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 5),
                    child: Image.asset('assets/4.webp', width: 40, height: 40),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 6),

          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: Text(
                '\$${singlePlayer.chips}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Align _logo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Image.asset(ImagePokerGame.bgh),
      ),
    );
  }

  SizedBox _bg() {
    return SizedBox(
      height: double.infinity,
      child: Image.asset(ImagePokerGame.bg, fit: BoxFit.cover),
    );
  }
}
