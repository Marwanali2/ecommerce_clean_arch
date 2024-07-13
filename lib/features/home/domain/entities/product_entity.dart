class ProductEntity {
  final String? productImageThumbnail;
  final List<String>? productImages;
  final String productTitle;
  final String productDescription;
  final num? productdiscountPercentage;
  final num? productRatring;

  ProductEntity(
      {required this.productImageThumbnail,
      required this.productImages,
      required this.productTitle,
      required this.productDescription,
      required this.productdiscountPercentage,
      required this.productRatring});
}
