// features/waste_bin/data/models/waste_bin_hive_model.dart
import 'package:hive/hive.dart';

part 'waste_bin_hive_model.g.dart'; // ← MUST HAVE THIS

@HiveType(typeId: 2) // ← Matches HiveTableConstant.wasteBinTypeId
class WasteBinHiveModel extends HiveObject {
  @HiveField(0)
  final String binId;

  @HiveField(1)
  final String locationName;

  @HiveField(2)
  final double latitude;

  @HiveField(3)
  final double longitude;

  @HiveField(4)
  double fillLevel;

  @HiveField(5)
  final String categoryId;

  @HiveField(6)
  String status;

  WasteBinHiveModel({
    required this.binId,
    required this.locationName,
    required this.latitude,
    required this.longitude,
    this.fillLevel = 0.0,
    required this.categoryId,
    this.status = 'active',
  });
}
