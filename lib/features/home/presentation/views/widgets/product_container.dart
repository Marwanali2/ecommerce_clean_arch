import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_container_circular_heart_gesture.dart';
import 'product_container_data.dart';
import 'product_container_image.dart';

class ProductContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final num price;
  final String oldPrice;
  final num rating;

  const ProductContainer({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.rating,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff004182).withOpacity(0.3),
          width: 2,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0.r),
      ),
      width: 191.w,
      height: 235.h,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductContainerImage(imageUrl: imageUrl),
              SizedBox(height: 6.h),
              ProductContainerData(name: name, description: description, price: price, oldPrice: oldPrice, rating: rating),
            ],
          ),
          const ProductContainerCircularHeartGesture(),
        ],
      ),
    );
  }
}