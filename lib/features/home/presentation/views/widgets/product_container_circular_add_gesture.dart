import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';

class ProductContainerCircularAddGesture extends StatelessWidget {
  const ProductContainerCircularAddGesture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SvgPictureComponent(
        name: '${AssetsData.svgFolderPath}/circle_add.svg',
        height: 23.h,
      ),
    );
  }
}
