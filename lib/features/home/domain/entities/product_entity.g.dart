// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 0;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      productImageThumbnail: fields[0] as String?,
      productImage: fields[1] as dynamic,
      productTitle: fields[2] as String,
      productDescription: fields[3] as String,
      productdiscountPercentage: fields[4] as num?,
      productPrice: fields[6] as num?,
      productRatring: fields[5] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.productImageThumbnail)
      ..writeByte(1)
      ..write(obj.productImage)
      ..writeByte(2)
      ..write(obj.productTitle)
      ..writeByte(3)
      ..write(obj.productDescription)
      ..writeByte(4)
      ..write(obj.productdiscountPercentage)
      ..writeByte(5)
      ..write(obj.productRatring)
      ..writeByte(6)
      ..write(obj.productPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
