// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waste_bin_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WasteBinHiveModelAdapter extends TypeAdapter<WasteBinHiveModel> {
  @override
  final int typeId = 2;

  @override
  WasteBinHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WasteBinHiveModel(
      binId: fields[0] as String,
      locationName: fields[1] as String,
      latitude: fields[2] as double,
      longitude: fields[3] as double,
      fillLevel: fields[4] as double,
      categoryId: fields[5] as String,
      status: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WasteBinHiveModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.binId)
      ..writeByte(1)
      ..write(obj.locationName)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude)
      ..writeByte(4)
      ..write(obj.fillLevel)
      ..writeByte(5)
      ..write(obj.categoryId)
      ..writeByte(6)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WasteBinHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
