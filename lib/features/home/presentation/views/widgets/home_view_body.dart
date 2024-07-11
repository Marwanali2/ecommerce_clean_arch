import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/utils/colors.dart';
import 'package:route_attendence_task/core/utils/text_styles.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';

import 'home_view_sliver_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0.h, left: 16.w, right: 16.w),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const HomeViewSliverAppBar(),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0.r),
                    border: Border.all(color: AppColorStyles.kPrimaryColor),
                  ),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'What do you search for?',
                        hintStyle: AppTextStyles.textStyle14PrimaryLight,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 5.h, left: 22.w),
                          child: const SvgPictureComponent(
                            name:
                                '${AssetsData.svgFolderPath}/icon _search.svg',
                            width: 22,
                            height: 22,
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0.h),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const SvgPictureComponent(
                  name: '${AssetsData.svgFolderPath}/icon _shopping cart.svg',
                  width: 66,
                  height: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
