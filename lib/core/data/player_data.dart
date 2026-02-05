import 'package:poker_game_app/core/model/player_mode.dart';

final List<ModelPlayer> players = [
  ModelPlayer(
    name: 'Alice',
    avatarUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfYRAWqd6TQyF2T7q3XretY6PCSDQVBnPhYg&s',
    cash: 1500.0,
    chips: 300,
    redChips: 10,
    greenChips: 20,
  ),
  ModelPlayer(
    name: 'Bob',
    avatarUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ48JWGkSOWJegd_jiLj6C5cz-Ityd6OMLR-w&s',
    cash: 1200.0,
    chips: 250,
    redChips: 5,
    greenChips: 15,
  ),
  ModelPlayer(
    name: 'Charlie',
    avatarUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBAXQ5Z_ylYrhwxGCT9MQIrHoengbVxq4P1g&s',
    cash: 1800.0,
    chips: 400,
    redChips: 8,
    greenChips: 25,
    blackChips: 1,
  ),
];
