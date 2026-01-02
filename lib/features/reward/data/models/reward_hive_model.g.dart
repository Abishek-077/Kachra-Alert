// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RewardHiveModelAdapter extends TypeAdapter<RewardHiveModel> {
  @override
  final int typeId = 7;

  @override
  RewardHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RewardHiveModel(
      userId: fields[0] as String,
      totalPoints: fields[1] as int,
      history: (fields[2] as List?)?.cast<RewardHistoryEntry>(),
    );
  }

  @override
  void write(BinaryWriter writer, RewardHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.totalPoints)
      ..writeByte(2)
      ..write(obj.history);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RewardHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
