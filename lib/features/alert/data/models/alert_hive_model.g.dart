// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlertHiveModelAdapter extends TypeAdapter<AlertHiveModel> {
  @override
  final int typeId = 4;

  @override
  AlertHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlertHiveModel(
      alertId: fields[0] as String?,
      userId: fields[1] as String,
      title: fields[2] as String,
      message: fields[3] as String,
      type: fields[4] as String,
      isRead: fields[5] as bool,
      createdAt: fields[6] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, AlertHiveModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.alertId)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.message)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.isRead)
      ..writeByte(6)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlertHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
