class ModelPlayer {
  final String name;
  final String avatarUrl;
  final double cash;
  final int chips;

  ModelPlayer({
    required this.name,
    required this.avatarUrl,
    required this.cash,
    this.chips = 0,
  });
}
