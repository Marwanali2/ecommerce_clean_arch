import 'package:hive/hive.dart';
part 'product_entity.g.dart';

@HiveType(typeId: 0)
class ProductEntity {
  @HiveField(0)
  final String? productImageThumbnail;
  @HiveField(1)
  final dynamic productImage;
  @HiveField(2)
  final String productTitle;
  @HiveField(3)
  final String productDescription;
  @HiveField(4)
  final num? productdiscountPercentage;
  @HiveField(5)
  final num? productRatring;
  @HiveField(6)
  final num? productPrice;

  ProductEntity(
      {required this.productImageThumbnail,
      required this.productImage,
      required this.productTitle,
      required this.productDescription,
      required this.productdiscountPercentage,
      required this.productPrice,
      required this.productRatring});
}
