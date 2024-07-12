import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';

class ProductContainerCircularHeartGesture extends StatelessWidget {
  const ProductContainerCircularHeartGesture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8.h,
      right: 6.w,
      child: GestureDetector(
        onTap: () {},
        child: Material(
          elevation: 10,
          shape: const CircleBorder(),
          child: Container(
            width: 30.w,
            height: 30.h,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: SvgPictureComponent(
                    name: '${AssetsData.svgFolderPath}/heart_icon.svg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
