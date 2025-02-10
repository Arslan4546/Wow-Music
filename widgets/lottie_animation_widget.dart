import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationWidget extends StatelessWidget {
  final String lottieUrl;
  final double width;
  final double height;

  LottieAnimationWidget({
    required this.lottieUrl,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      lottieUrl,
      width: width,
      height: height,
    );
  }
}
