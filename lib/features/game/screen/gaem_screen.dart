import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';
import 'dart:math' as math;

class GaemScreen extends StatefulWidget {
  const GaemScreen({super.key});

  @override
  State<GaemScreen> createState() => _GaemScreenState();
}

class _GaemScreenState extends State<GaemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(ImagePokerGame.bgGame, fit: BoxFit.cover),
          ),
          Center(
            child: SizedBox(
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Image.asset(ImagePokerGame.tableGame, fit: BoxFit.cover),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _iconBtn(Icons.home, () {}),
                    _iconBtn(Icons.logout, () {}),
                  ],
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: MediaQuery.of(context).size.height * 0.05,
            child: _player(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            right: MediaQuery.of(context).size.height * 0.05,
            child: _player(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.4,
            right: MediaQuery.of(context).size.height * 0.05,
            child: _player(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.4,
            left: MediaQuery.of(context).size.height * 0.05,
            child: _player(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.28,
            left: MediaQuery.of(context).size.height * 0.08,
            child: _player(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.28,
            right: MediaQuery.of(context).size.height * 0.08,
            child: _player(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.28,
            left: MediaQuery.of(context).size.height * 0.08,
            child: _player(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.28,
            right: MediaQuery.of(context).size.height * 0.08,
            child: _player(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.14,
            right: MediaQuery.of(context).size.height * 0.25,
            child: _player(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.14,
            right: MediaQuery.of(context).size.height * 0.25,
            child: _player(),
          ),
        ],
      ),
    );
  }

  Container _player() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text("data"),
    );
  }

  SizedBox _card(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.08,
      child: Image.asset(ImagePokerGame.pokerChipRed, fit: BoxFit.cover),
    );
  }

  GestureDetector _iconBtn(IconData icon, VoidCallback op) {
    return GestureDetector(
      onTap: op,
      child: Icon(icon, size: 25, color: Colors.white.withOpacity(0.5)),
    );
  }
}
