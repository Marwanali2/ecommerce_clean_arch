import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/features/home/presentation/managers/home_products_cubit/home_products_cubit.dart';

import 'product_container.dart';
import 'sliver_custom_error_widget_to_box_adapter.dart';
import 'sliver_grid_loading_shimmer.dart';

class HomeViewSliverGrid extends StatelessWidget {
  const HomeViewSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProductsCubit, HomeProductsState>(
        builder: (context, state) {
      if (state is HomeProductsSuccess) {
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
                return ProductContainer(
                  imageUrl: state.products[index].productImage[0] ??
                      'https://s3-alpha-sig.figma.com/img/9b3f/7ef6/0b089a0cbd184e6c358f2d6c87633283?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P59X6m7xzfai4WMQKAnt~eWb6Bn~44-RwQIricPzj1nK8WfeAuFZqoksmIe--YsGXPrA-AQ093AeVVyF1SuMb-NkUMzBByXd0Us~0ACY80d47sLdZR20O9W87oL2xV49AgG~2SSylMDd5CRwlifNns71cQQdCwPFMJWVVuXxmWYTLujjhPxR0jrDuLaPNwPh7DWTZ28qiCVS6uGX0tW~KnKFb4TMGX7xmfkWoS7hWh-wrPMRiDusPIZKUht6CV7eAUExaKBVLtvPANp-k6uQ6x6djW49p~vtAtXY9-gdJ-ZQ-Vy-TTRBkB50bvxHVrrSDOFbhFeLevhi37avQrXE5A__',
                  name: state.products[index].productTitle,
                  description: state.products[index].productDescription,
                  price: state.products[index].productPrice ?? 0.0,
                  oldPrice: state.products[index].productPrice! /
                      (1 -
                              (state.products[index]
                                      .productdiscountPercentage! /
                                  100))
                          .round(),
                  rating: state.products[index].productRatring ?? 0.0,

                  /*        imageUrl:
                      'https://s3-alpha-sig.figma.com/img/9b3f/7ef6/0b089a0cbd184e6c358f2d6c87633283?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P59X6m7xzfai4WMQKAnt~eWb6Bn~44-RwQIricPzj1nK8WfeAuFZqoksmIe--YsGXPrA-AQ093AeVVyF1SuMb-NkUMzBByXd0Us~0ACY80d47sLdZR20O9W87oL2xV49AgG~2SSylMDd5CRwlifNns71cQQdCwPFMJWVVuXxmWYTLujjhPxR0jrDuLaPNwPh7DWTZ28qiCVS6uGX0tW~KnKFb4TMGX7xmfkWoS7hWh-wrPMRiDusPIZKUht6CV7eAUExaKBVLtvPANp-k6uQ6x6djW49p~vtAtXY9-gdJ-ZQ-Vy-TTRBkB50bvxHVrrSDOFbhFeLevhi37avQrXE5A__',
                  name: 'Nike Air Jordon',
                  description:
                      'Nike shoes flexible for woNike shoes flexible for wo',
                  price: 'EGP 1,200',
                  oldPrice: '2,000 EGP',
                  rating: 4.6, */
                );
              },
              childCount: state.products.length,
            ),
          ),
        );
      } else if (state is HomeProductsFailure) {
        return const SliverCustomErrorWidgetToBoxAdapter();
      } else {
        return const SliverGridLoadingShimmer();
      }
    });
  }
}
