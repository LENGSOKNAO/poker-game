import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poker_game_app/core/data/player_data.dart';
import 'package:poker_game_app/core/fonts/font_size.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';
import 'package:poker_game_app/features/lobby/lobby_screen.dart';
import 'package:poker_game_app/routes/route.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _bgImage(),
          _filter(),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In ',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xff40525E),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: FontSize.width(context) * 0.04,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              child: Text(
                                'CONNECT YOUR NAME',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff98DEE3),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: _usernameController,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                            ),

                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 22,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.1),
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.5),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF98DEE3),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              final user = _usernameController.text.trim();
                              final player = players
                                  .where((p) => p.name == user)
                                  .toList();
                              if (user.isNotEmpty && player.isNotEmpty) {
                                final playerData = player.first;

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        LobbyScreen(player: playerData),
                                  ),
                                );
                              } else if (player.isEmpty && user.isNotEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.black87,
                                    duration: const Duration(seconds: 4),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    action: SnackBarAction(
                                      label: 'OK',
                                      textColor: Colors.cyanAccent,
                                      onPressed: () {},
                                    ),
                                    content: const Text(
                                      'Username not found',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                );
                              } else if (user.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.black87,
                                    duration: const Duration(seconds: 4),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    action: SnackBarAction(
                                      label: 'OK',
                                      textColor: Colors.cyanAccent,
                                      onPressed: () {},
                                    ),
                                    content: const Text(
                                      'Please enter a username',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              minimumSize: const Size(double.infinity, 0),
                            ),
                            child: const Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _bgImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagePokerGame.imageBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  BackdropFilter _filter() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 29, 36, 40).withOpacity(0.9),
        ),
      ),
    );
  }
}
