import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // SliverToBoxAdapter(
        //   child: Column(
        //     children: [
        //       CustomAppBar(),
        //       FeaturedBooksListView(),
        //       SizedBox(
        //         height: 60,
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 30),
        //         child: Text(
        //           "Best Seller",
        //           style: TextStyles.textStyle18,
        //         ),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //     ],
        //   ),
        // ),
        // SliverFillRemaining(
        //   child: BestSellerListView(),
        // ),
      ],
    );
  }
}


