import 'package:flutter/material.dart';
import 'package:poker_game_app/core/fonts/font_size.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';
import 'package:poker_game_app/routes/route.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImagePokerGame.imageOnboard),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: const Alignment(0, 0.60),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.signInScreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffE97B88),
                  foregroundColor: Colors.black,
                  elevation: 8,
                  padding: EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                child: Text(
                  'PLAY NOW',
                  style: TextStyle(
                    fontSize: FontSize.small(context),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
