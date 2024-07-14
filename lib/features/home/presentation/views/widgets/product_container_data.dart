import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/theming/colors.dart';
import 'package:route_attendence_task/core/theming/text_styles.dart';
import 'review_and_circular_add_gesture.dart';

class ProductContainerData extends StatelessWidget {
  const ProductContainerData({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.rating,
  });

  final String name;
  final String description;
  final num price;
  final String oldPrice;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h, right: 5.w, left: 5.w),
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
                'EGP ${price.toString()}',
                style: AppTextStyles.textStyle12SemiBlueNormal,
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Text(
                  '${oldPrice.toString()} EGP',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.textStyle11SemiLightBlueNormal.copyWith(
                      //fontSize: 9.sp,
                      color: AppColorStyles.kSemiLightBlue.withOpacity(0.6),
                      decoration: TextDecoration.lineThrough,
                      decorationColor:
                          AppColorStyles.kSemiLightBlue.withOpacity(0.6)),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          ReviewAndCircularAddGesture(rating: rating),
        ],
      ),
    );
  }
}
