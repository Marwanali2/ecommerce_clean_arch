import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/widgets/custom_error_widget.dart';

class SliverCustomErrorWidgetToBoxAdapter extends StatelessWidget {
  const SliverCustomErrorWidgetToBoxAdapter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 24.h),
      sliver: const SliverToBoxAdapter(
        child: CustomErrorWidget(),
      ),
    );
  }
}
