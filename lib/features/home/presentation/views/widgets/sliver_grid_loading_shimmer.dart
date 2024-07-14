import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/features/home/presentation/views/widgets/product_container_shimmer.dart';

class SliverGridLoadingShimmer extends StatelessWidget {
  const SliverGridLoadingShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 24.h),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 0.7,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const ProductContainerShimmer();
          },
          childCount: 30,
        ),
      ),
    );
  }
}
