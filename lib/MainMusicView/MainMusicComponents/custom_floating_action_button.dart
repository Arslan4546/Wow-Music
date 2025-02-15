import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFloatingActionButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 265, // Adjusted position
      left:
          MediaQuery.of(context).size.width / 2 + 100, // Centered horizontally
      child: FloatingActionButton(
        backgroundColor: const Color(0xFFFFD740), // Updated color
        onPressed: onPressed,
        child: const Icon(Icons.play_arrow,
            color: Colors.white, size: 50), // Increased size
        elevation: 10,
        heroTag: null,
      ),
    );
  }
}
