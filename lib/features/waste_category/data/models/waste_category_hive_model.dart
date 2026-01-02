import 'package:hive/hive.dart';

part 'waste_category_hive_model.g.dart';

@HiveType(typeId: 5) // wasteCategoryTypeId
class WasteCategoryHiveModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String description;

  WasteCategoryHiveModel({
    required this.id,
    required this.name,
    required this.description,
  });
}
