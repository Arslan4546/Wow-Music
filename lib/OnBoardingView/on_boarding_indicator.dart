import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  final int currentPage;
  final int itemCount;
  final Color activeColor;
  final Color inactiveColor;

  const OnBoardingIndicator({
    required this.currentPage,
    required this.itemCount,
    required this.activeColor,
    required this.inactiveColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: index == currentPage ? 20 : 10,
            width: index == currentPage ? 20 : 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: index == currentPage ? activeColor : inactiveColor,
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }
}
