import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/utils/colors.dart';
import 'package:route_attendence_task/core/utils/text_styles.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';

import 'product_container_circular_add_gesture.dart';
import 'product_container_circular_heart_gesture.dart';

class ProductContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String oldPrice;
  final double rating;

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
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13.0.r),
                    topRight: Radius.circular(13.0.r),
                  )),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                    width: 191.w,
                    height: 128.h,
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              Padding(
                padding: EdgeInsets.only(bottom: 11.h, right: 5.w, left: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.textStyle12SemiBlueNormal,
                    ),
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.textStyle12SemiBlueNormal,
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        Text(
                          price,
                          style: AppTextStyles.textStyle12SemiBlueNormal,
                        ),
                        SizedBox(width: 16.w),
                        Text(
                          oldPrice,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.textStyle11SemiLightBlueNormal
                              .copyWith(
                                  fontSize: 9.sp,
                                  color: AppColorStyles.kSemiLightBlue
                                      .withOpacity(0.6),
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColorStyles.kSemiLightBlue
                                      .withOpacity(0.6)),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        Text(
                          'Review',
                          style: AppTextStyles.textStyle12SemiBlueNormal
                              .copyWith(fontSize: 11.sp),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '(${rating.toString()})',
                          style: AppTextStyles.textStyle12SemiBlueNormal
                              .copyWith(fontSize: 11.sp),
                        ),
                        const SizedBox(width: 4),
                        const SvgPictureComponent(
                            name:
                                '${AssetsData.svgFolderPath}/white_medium_star.svg',
                            //width: 10,
                            height: 15),
                        const Spacer(),
                        const ProductContainerCircularAddGesture(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const ProductContainerCircularHeartGesture(),
        ],
      ),
    );
  }
}
