class ModelPlayer {
  final String name;
  final String avatarUrl;
  final double cash;
  final int chips;
  final int points;
  final String status;

  ModelPlayer({
    required this.name,
    required this.avatarUrl,
    required this.cash,
    required this.status,
    this.chips = 0,
    this.points = 0,
  });
}
