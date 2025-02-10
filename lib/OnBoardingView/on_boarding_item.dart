import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Color color;

  const OnBoardingItem({
    required this.image,
    required this.title,
    required this.description,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Image(
          image: AssetImage(image),
          height: 50,
          width: 500,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
