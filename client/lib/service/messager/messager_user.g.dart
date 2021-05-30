// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messager_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessagerUserAdapter extends TypeAdapter<MessagerUser> {
  @override
  final int typeId = 5;

  @override
  MessagerUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessagerUser(
      username: fields[0] as String,
      role: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MessagerUser obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessagerUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
