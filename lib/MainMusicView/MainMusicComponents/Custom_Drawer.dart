import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class CustomSliderAppBar extends StatelessWidget {
  final GlobalKey<SliderDrawerState> sliderKey;

  const CustomSliderAppBar({Key? key, required this.sliderKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderAppBar(
      config: SliderAppBarConfig(
        title: const Text(
          "Custom AppBar",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            sliderKey.currentState?.toggle();
          },
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('Home', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.music_note, color: Colors.white),
            title: const Text('Music', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle navigation
            },
          ),
          // Add more list tiles as needed
        ],
      ),
    );
  }
}
