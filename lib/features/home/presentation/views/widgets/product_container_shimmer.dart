import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProductContainerShimmer extends StatelessWidget {
  const ProductContainerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
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
                    child: Container(
                      width: 191.w,
                      height: 128.h,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.only(bottom: 11.h, right: 5.w, left: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100.w,
                        height: 12.h,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        width: 150.w,
                        height: 12.h,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 50.w,
                            height: 12.h,
                            color: Colors.grey[300],
                          ),
                          SizedBox(width: 16.w),
                          Container(
                            width: 50.w,
                            height: 12.h,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 12.h,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 20.w,
                            height: 12.h,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 15.w,
                            height: 15.h,
                            color: Colors.grey[300],
                          ),
                          const Spacer(),
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10.h,
              right: 10.w,
              child: Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
