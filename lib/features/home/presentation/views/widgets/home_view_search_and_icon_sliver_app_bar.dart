import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/theming/colors.dart';
import 'package:route_attendence_task/core/theming/text_styles.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';

class HomeViewSearchFieldAndIconSliverAppbar extends StatelessWidget {
  const HomeViewSearchFieldAndIconSliverAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: true,
      floating: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leadingWidth: MediaQuery.sizeOf(context).width * 1,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0.r),
              border: Border.all(color: AppColorStyles.kPrimaryColor),
            ),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.82,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'What do you search for?',
                  hintStyle: AppTextStyles.textStyle12PrimaryLight,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 5.h, left: 22.w),
                    child: const SvgPictureComponent(
                      name: '${AssetsData.svgFolderPath}/icon _search.svg',
                      width: 22,
                      height: 22,
                    ),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 13.0.h, horizontal: 10.0.w),
                ),
              ),
            ),
          ),
          const SvgPictureComponent(
            name: '${AssetsData.svgFolderPath}/icon _shopping cart.svg',
            height: 22,
          ),
        ],
      ),
    );
  }
}
