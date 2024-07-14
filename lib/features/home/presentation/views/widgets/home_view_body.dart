import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_view_sliver_grid.dart';
import 'home_view_sliver_app_bar.dart';
import 'home_view_search_and_icon_sliver_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w),
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          HomeViewSliverAppBar(),
          HomeViewSearchFieldAndIconSliverAppbar(),
          HomeViewSliverGrid(),
        ],
      ),
    );
  }
}
