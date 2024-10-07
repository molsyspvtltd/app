// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCartAdapter extends TypeAdapter<HiveCart> {
  @override
  final int typeId = 0;

  @override
  HiveCart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCart(
      fields[0] as String,
      fields[1] as String,
      fields[2] as double,
    )..key = fields[3] as String?;
  }

  @override
  void write(BinaryWriter writer, HiveCart obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.productName)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.key);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
