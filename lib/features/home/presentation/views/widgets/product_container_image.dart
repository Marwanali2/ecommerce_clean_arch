import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/theming/colors.dart';

class ProductContainerImage extends StatelessWidget {
  const ProductContainerImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13.0.r),
            topRight: Radius.circular(13.0.r),
          )),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            width: 191.w,
            height: 128.h,
            placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
              color: AppColorStyles.kPrimaryColor,
            )),
            errorWidget: (context, url, error) =>
                const Icon(Icons.error),
          )),
    );
  }
}
