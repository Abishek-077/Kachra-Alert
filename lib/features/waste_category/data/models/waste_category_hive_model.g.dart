// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waste_category_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WasteCategoryHiveModelAdapter
    extends TypeAdapter<WasteCategoryHiveModel> {
  @override
  final int typeId = 5;

  @override
  WasteCategoryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WasteCategoryHiveModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WasteCategoryHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WasteCategoryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
