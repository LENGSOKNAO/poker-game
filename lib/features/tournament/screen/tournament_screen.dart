import 'package:flutter/material.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';

class TournamentScreen extends StatelessWidget {
  const TournamentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Tournament Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(ImagePokerGame.bg, fit: BoxFit.cover),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Placeholder(
                  fallbackHeight: MediaQuery.of(context).size.height * 0.30,
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Placeholder(
                  fallbackHeight: MediaQuery.of(context).size.height * 0.55,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
