import 'package:flutter/material.dart';
import 'package:poker_game_app/core/data/player_data.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';
import 'package:poker_game_app/core/model/player_mode.dart';
import 'package:poker_game_app/routes/route.dart';

class TournamentScreen extends StatefulWidget {
  final ModelPlayer won;

  const TournamentScreen({required this.won, super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _bar(),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Image.asset(ImagePokerGame.bgt, fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                _btn(),
                SizedBox(height: 20),
                _board(),
                _listPlayer(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _bar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: const Text(
        'TOURNAMENT LEADERBOARD',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                  width: 1,
                ),
              ),

              child: const Icon(
                Icons.navigate_next_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  ElevatedButton _btn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoute.gameScreen);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black.withOpacity(0.04),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        "Play Now",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          letterSpacing: 2.0,
          shadows: [
            Shadow(
              color: Colors.white.withOpacity(0.6),
              blurRadius: 12,
              offset: const Offset(0, 0),
            ),
          ],
        ),
      ),
    );
  }

  Container _board() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),

        border: Border.all(color: Colors.white.withOpacity(0.12), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Text(
        "TOP OF THE LEADERBOARD",
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 2.0,
          shadows: [
            Shadow(
              color: Colors.white.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  SizedBox _listPlayer(BuildContext context) {
    final sortedPoints = List<ModelPlayer>.from(players)
      ..sort((a, b) => b.points.compareTo(a.points));

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: sortedPoints.length,
        itemBuilder: (context, index) {
          final player = sortedPoints[index];

          final rank = index + 1;
          final isTop = rank == 1;
          final isSecond = rank == 2;
          final isThird = rank == 3;
          final user = player == widget.won;

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(16),
              splashColor: Colors.white.withOpacity(0.08),
              child: Container(
                height: 88,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.06), // glassmorphism style
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.12),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: user
                          ? const Color.fromARGB(
                              255,
                              4,
                              255,
                              0,
                            ).withOpacity(0.5)
                          : Colors.black.withOpacity(0.25),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      decoration: BoxDecoration(
                        gradient: isTop
                            ? const LinearGradient(
                                colors: [Colors.amber, Colors.orangeAccent],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : isSecond
                            ? const LinearGradient(
                                colors: [Colors.blueGrey, Colors.black54],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : isThird
                            ? const LinearGradient(
                                colors: [Colors.brown, Colors.deepOrange],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : const LinearGradient(
                                colors: [Colors.white38, Colors.black12],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          '$rank',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: isTop
                                ? Colors.redAccent
                                : isSecond
                                ? Colors.white
                                : isThird
                                ? Colors.amberAccent
                                : Colors.grey,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 12,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1.5,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey.shade800,
                                backgroundImage: NetworkImage(player.avatarUrl),
                              ),
                            ),

                            const SizedBox(width: 14),

                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    player.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      '${player.points} Points',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white70,
                                      ),

                                      maxLines: 1,

                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
