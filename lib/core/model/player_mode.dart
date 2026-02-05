class ModelPlayer {
  final String name;
  final String avatarUrl;
  final double cash;
  final int chips;

  final int redChips;
  final int greenChips;
  final int blackChips;
  final int whiteChips;

  ModelPlayer({
    required this.name,
    required this.avatarUrl,
    required this.cash,
    required this.chips,
    this.redChips = 0,
    this.greenChips = 0,
    this.blackChips = 0,
    this.whiteChips = 0,
  });
}
