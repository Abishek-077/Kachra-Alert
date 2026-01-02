import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'comment_hive_model.g.dart';

@HiveType(typeId: 6) // commentTypeId
class CommentHiveModel extends HiveObject {
  @HiveField(0)
  final String commentId;

  @HiveField(1)
  final String reportId;

  @HiveField(2)
  final String userId;

  @HiveField(3)
  final String text;

  @HiveField(4)
  final DateTime createdAt;

  CommentHiveModel({
    String? commentId,
    required this.reportId,
    required this.userId,
    required this.text,
    DateTime? createdAt,
  }) : commentId = commentId ?? const Uuid().v4(),
       createdAt = createdAt ?? DateTime.now();
}
