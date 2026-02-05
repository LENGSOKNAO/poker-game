import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poker_game_app/core/image/image_netowork.dart';
import 'package:poker_game_app/core/model/player_mode.dart';
import 'package:poker_game_app/routes/route.dart';

class LobbyScreen extends StatefulWidget {
  final ModelPlayer player;
  const LobbyScreen({super.key, required this.player});

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _bar(),
      body: Stack(
        children: [
          _image(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                _buildEventButton(
                  icon: Icons.casino,
                  label: 'Cash Games',
                  color: Colors.green.shade700,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.gameScreen);
                  },
                ),
                _buildEventButton(
                  icon: Icons.emoji_events,
                  label: 'Tournaments',
                  color: Colors.orange.shade800,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.tournamentScreen);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _image() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(ImagePokerGame.imageOnboard, fit: BoxFit.cover),
    );
  }

  AppBar _bar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(widget.player.avatarUrl),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.player.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff98DEE3),
                ),
              ),
              Text(
                '\$${widget.player.cash.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff98DEE3),
                  letterSpacing: 0.6,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        const SizedBox(width: 8),
        _appBarN('${widget.player.chips}', Color(0xff98DEE3), () {}),
        const SizedBox(width: 8),
        _appBarAction(Icons.people, () {}),
        const SizedBox(width: 8),
        _appBarAction(Icons.list_outlined, () {}),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildEventButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(2),
          child: Ink(
            decoration: BoxDecoration(
              color: color.withOpacity(0.85),
              borderRadius: BorderRadius.circular(2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.white, size: 28),
                  const SizedBox(width: 16),
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _appBarAction(IconData icon, VoidCallback onPressed) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xff98DEE3).withOpacity(0.18),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xff98DEE3).withOpacity(0.4)),
      ),
      child: Icon(icon, color: const Color(0xff98DEE3), size: 24),
    );
  }

  Widget _appBarN(String data, Color color, VoidCallback onPressed) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xff98DEE3).withOpacity(0.18),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xff98DEE3).withOpacity(0.4)),
      ),
      child: Text(data, style: TextStyle(fontSize: 17, color: color)),
    );
  }
}
