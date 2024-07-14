import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/theming/text_styles.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';
import 'package:route_attendence_task/features/home/presentation/views/widgets/product_container_circular_add_gesture.dart';

class ReviewAndCircularAddGesture extends StatelessWidget {
  const ReviewAndCircularAddGesture({
    super.key,
    required this.rating,
  });

  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            name: '${AssetsData.svgFolderPath}/white_medium_star.svg',
            height: 15),
        const Spacer(),
        const ProductContainerCircularAddGesture(),
      ],
    );
  }
}
