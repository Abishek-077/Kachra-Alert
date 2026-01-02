// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waste_report_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WasteReportHiveModelAdapter extends TypeAdapter<WasteReportHiveModel> {
  @override
  final int typeId = 1;

  @override
  WasteReportHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WasteReportHiveModel(
      reportId: fields[0] as String?,
      reportedBy: fields[1] as String,
      title: fields[2] as String,
      description: fields[3] as String,
      categoryId: fields[4] as String,
      latitude: fields[5] as double,
      longitude: fields[6] as double,
      imagePath: fields[7] as String?,
      status: fields[8] as String,
      reportedAt: fields[9] as DateTime?,
      resolvedAt: fields[10] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, WasteReportHiveModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.reportId)
      ..writeByte(1)
      ..write(obj.reportedBy)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.categoryId)
      ..writeByte(5)
      ..write(obj.latitude)
      ..writeByte(6)
      ..write(obj.longitude)
      ..writeByte(7)
      ..write(obj.imagePath)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.reportedAt)
      ..writeByte(10)
      ..write(obj.resolvedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WasteReportHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
