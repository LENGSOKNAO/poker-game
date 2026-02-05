import 'package:flutter/material.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';

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
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagePokerGame.bg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(child: Image.asset('assets/intro.webp')),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                SizedBox(width: 60, child: Image.asset('assets/4.webp')),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.66,
            left: 5,
            child: Center(child: _playerBox()),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 5,
            child: Center(child: _playerBox()),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.66,
            right: 5,
            child: Center(child: _playerBox()),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            right: 5,
            child: Center(child: _playerBox()),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.08,
            left: 0,
            right: 0,
            child: Center(child: _userBox()),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.03,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _btn("Fold"),
                _btn("Check"),
                // _btn("Call"),
                _btn("Raise"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton _btn(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // poker red
        foregroundColor: Colors.white70,
        elevation: 6,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
      child: Text(text),
    );
  }

  SizedBox _userBox() {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                    SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Image.asset(ImagePokerGame.boxUser, fit: BoxFit.cover),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                '\$1000',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 63),
              child: Text(
                'You',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _playerBox() {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                    SizedBox(width: 60, child: Image.asset('assets/4.webp')),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Image.asset(ImagePokerGame.boxPlayer, fit: BoxFit.cover),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                '\$1000',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 63),
              child: Text(
                'Alice',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
