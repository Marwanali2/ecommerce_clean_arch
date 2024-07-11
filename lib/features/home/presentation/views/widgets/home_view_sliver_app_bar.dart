import 'package:flutter/material.dart';
import 'package:route_attendence_task/core/utils/assets_data.dart';
import 'package:route_attendence_task/core/widgets/svg_picture_ccomponent.dart';

class HomeViewSliverAppBar extends StatelessWidget {
  const HomeViewSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: SvgPictureComponent(
        name: '${AssetsData.svgFolderPath}/route_logo.svg',
        width: 66,
        height: 22,
      ),
      floating: true,
      snap: true,
    );
  }
}
