import 'package:flutter/material.dart';

class TopContent extends StatelessWidget {
  const TopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 20,
      right: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: Colors.white, size: 30), // Increased size
              Icon(Icons.more_vert,
                  color: Colors.white, size: 30), // Increased size
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Name Surname',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '"Music name"',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
