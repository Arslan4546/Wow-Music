import 'package:flutter/material.dart';
import 'package:wow_music/MainMusicComponents/custom_floating_action_button.dart';
import 'package:wow_music/MainMusicComponents/custom_list_tile.dart';
import 'package:wow_music/MainMusicComponents/top_content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMusicScreen(),
    );
  }
}

class MainMusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Content Overlay
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                    height: 300), // Adjusted height to push content down
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100), // Changed to topRight
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Most popular tracks',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ...List.generate(6, (index) {
                        return CustomListTile(index: index);
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Curved Background with Gradient Effect
          Container(
            height: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFD740), Color(0xFFFFA000)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(200),
              ),
            ),
          ),
          // Top Content
          const TopContent(),
          // Play Button Floating
          CustomFloatingActionButton(
            onPressed: () {
              // Define the onPressed action here
            },
          ),
        ],
      ),
    );
  }
}
