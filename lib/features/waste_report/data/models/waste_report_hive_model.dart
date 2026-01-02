import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'waste_report_hive_model.g.dart';

@HiveType(typeId: 1) // wasteReportTypeId
class WasteReportHiveModel extends HiveObject {
  @HiveField(0)
  final String reportId;

  @HiveField(1)
  final String reportedBy; // userId

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String categoryId;

  @HiveField(5)
  final double latitude;

  @HiveField(6)
  final double longitude;

  @HiveField(7)
  final String? imagePath; // Local file path

  @HiveField(8)
  final String status; // 'pending', 'in_progress', 'resolved'

  @HiveField(9)
  final DateTime reportedAt;

  @HiveField(10)
  final DateTime? resolvedAt;

  WasteReportHiveModel({
    String? reportId,
    required this.reportedBy,
    required this.title,
    required this.description,
    required this.categoryId,
    required this.latitude,
    required this.longitude,
    this.imagePath,
    this.status = 'pending',
    DateTime? reportedAt,
    this.resolvedAt,
  }) : reportId = reportId ?? const Uuid().v4(),
       reportedAt = reportedAt ?? DateTime.now();
}
