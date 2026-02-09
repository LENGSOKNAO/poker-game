import 'package:poker_game_app/core/model/player_mode.dart';

final List<ModelPlayer> players = [
  ModelPlayer(
    name: 'Charlie',
    avatarUrl:
        'https://images.unsplash.com/photo-1552058544-f2b08422138a?w=150',
    cash: 1800.0,
    chips: 400,
    points: 920,
    status: 'Playing', // in a match right now
  ),
  ModelPlayer(
    name: 'Alice',
    avatarUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=150',
    cash: 1500.0,
    chips: 300,
    points: 850,
    status: 'Online',
  ),
  ModelPlayer(
    name: 'Bob',
    avatarUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150',
    cash: 1200.0,
    chips: 250,
    points: 780,
    status: 'Offline',
  ),
  ModelPlayer(
    name: 'Sophia',
    avatarUrl:
        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?w=150',
    cash: 2100.0,
    chips: 520,
    points: 1120,
    status: 'Playing',
  ),
  ModelPlayer(
    name: 'Liam',
    avatarUrl:
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150',
    cash: 900.0,
    chips: 180,
    points: 450,
    status: 'Online',
  ),
  ModelPlayer(
    name: 'Olivia',
    avatarUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150',
    cash: 1600.0,
    chips: 350,
    points: 980,
    status: 'Offline',
  ),
  ModelPlayer(
    name: 'Noah',
    avatarUrl: 'https://imgs.search.brave.com/...', // shortened for readability
    cash: 2300.0,
    chips: 600,
    points: 1350,
    status: 'Playing',
  ),
  ModelPlayer(
    name: 'Emma',
    avatarUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=150',
    cash: 1400.0,
    chips: 290,
    points: 620,
    status: 'Online',
  ),
  ModelPlayer(
    name: 'Mia',
    avatarUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=150',
    cash: 1950.0,
    chips: 450,
    points: 1050,
    status: 'Playing',
  ),
];
