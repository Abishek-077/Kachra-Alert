// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommentHiveModelAdapter extends TypeAdapter<CommentHiveModel> {
  @override
  final int typeId = 6;

  @override
  CommentHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommentHiveModel(
      commentId: fields[0] as String?,
      reportId: fields[1] as String,
      userId: fields[2] as String,
      text: fields[3] as String,
      createdAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, CommentHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.commentId)
      ..writeByte(1)
      ..write(obj.reportId)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
