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
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          HomeViewSliverAppBar(),
        ],
      ),
    );
  }
}
