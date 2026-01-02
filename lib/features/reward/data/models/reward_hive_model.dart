import 'package:hive/hive.dart';

part 'reward_hive_model.g.dart';

class RewardHistoryEntry {
  final int points;
  final String reason;
  final DateTime date;

  RewardHistoryEntry({
    required this.points,
    required this.reason,
    required this.date,
  });
}

@HiveType(typeId: 7) // rewardTypeId
class RewardHiveModel extends HiveObject {
  @HiveField(0)
  final String userId;

  @HiveField(1)
  int totalPoints;

  @HiveField(2)
  final List<RewardHistoryEntry> history;

  RewardHiveModel({
    required this.userId,
    this.totalPoints = 0,
    List<RewardHistoryEntry>? history,
  }) : history = history ?? [];
}
