import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'alert_hive_model.g.dart';

@HiveType(typeId: 4) // alertTypeId
class AlertHiveModel extends HiveObject {
  @HiveField(0)
  final String alertId;

  @HiveField(1)
  final String userId; // or null for broadcast

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String message;

  @HiveField(4)
  final String type; // 'overflow', 'schedule', 'reward', 'info'

  @HiveField(5)
  bool isRead;

  @HiveField(6)
  final DateTime createdAt;

  AlertHiveModel({
    String? alertId,
    required this.userId,
    required this.title,
    required this.message,
    required this.type,
    this.isRead = false,
    DateTime? createdAt,
  }) : alertId = alertId ?? const Uuid().v4(),
       createdAt = createdAt ?? DateTime.now();
}
