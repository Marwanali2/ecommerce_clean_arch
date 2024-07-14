import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';

import 'dimensions.dart';
import 'meta.dart';
import 'review.dart';

class ProductModel extends ProductEntity {
  num? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  num? stock;
  List<dynamic>? tags;
  String? brand;
  String? sku;
  num? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Review>? reviews;
  String? returnPolicy;
  num? minimumOrderQuantity;
  Meta? meta;
  List<dynamic>? images;
  String? thumbnail;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  }) : super(
          productImageThumbnail: thumbnail,
          productImage: images,
          productTitle: title??'',
          productDescription: description??'',
          productdiscountPercentage: discountPercentage,
          productRatring: rating,
          productPrice: price,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as num?,
        title: json['title'] as String?,
        description: json['description'] as String?,
        category: json['category'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
        rating: (json['rating'] as num?)?.toDouble(),
        stock: json['stock'] as num?,
        tags: json['tags'] as List<dynamic>?,
        brand: json['brand'] as String?,
        sku: json['sku'] as String?,
        weight: json['weight'] as num?,
        dimensions: json['dimensions'] == null
            ? null
            : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
        warrantyInformation: json['warrantyInformation'] as String?,
        shippingInformation: json['shippingInformation'] as String?,
        availabilityStatus: json['availabilityStatus'] as String?,
        reviews: (json['reviews'] as List<dynamic>?)
            ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
            .toList(),
        returnPolicy: json['returnPolicy'] as String?,
        minimumOrderQuantity: json['minimumOrderQuantity'] as num?,
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(json['meta'] as Map<String, dynamic>),
        images: json['images'] as List<dynamic>?,
        thumbnail: json['thumbnail'] as String?,
      );
}
