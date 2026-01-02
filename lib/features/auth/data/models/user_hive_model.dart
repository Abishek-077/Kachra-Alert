import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'user_hive_model.g.dart';

@HiveType(typeId: 0) // Matches HiveTableConstant.userTypeId
class UserHiveModel extends HiveObject {
  @HiveField(0)
  final String userId;

  @HiveField(1)
  final String fullName;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String password; // Hashed in real app

  @HiveField(4)
  final String? phone;

  @HiveField(5)
  final String? address;

  @HiveField(6)
  final String role; // 'citizen', 'collector', 'admin'

  @HiveField(7)
  final String? profilePicPath;

  @HiveField(8)
  final DateTime createdAt;

  UserHiveModel({
    String? userId,
    required this.fullName,
    required this.email,
    required this.password,
    this.phone,
    this.address,
    this.role = 'citizen',
    this.profilePicPath,
    DateTime? createdAt,
  }) : userId = userId ?? const Uuid().v4(),
       createdAt = createdAt ?? DateTime.now();

  // For easy copying/updating
  UserHiveModel copyWith({
    String? fullName,
    String? email,
    String? password,
    String? phone,
    String? address,
    String? role,
    String? profilePicPath,
  }) {
    return UserHiveModel(
      userId: userId,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      role: role ?? this.role,
      profilePicPath: profilePicPath ?? this.profilePicPath,
      createdAt: createdAt,
    );
  }
}
