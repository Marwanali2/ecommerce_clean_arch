import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        "assets/lottie_json_animations/12434-no-connection.json",
      ),
    );
  }
}
