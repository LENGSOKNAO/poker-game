class ModelPlayer {
  final String name;
  final String avatarUrl;
  final double cash;
  final int chips;
  final int points;

  ModelPlayer({
    required this.name,
    required this.avatarUrl,
    required this.cash,
    this.chips = 0,
    this.points = 0,
  });
}
