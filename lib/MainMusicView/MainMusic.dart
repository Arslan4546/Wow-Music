import 'package:flutter/material.dart';
import 'package:wow_music/MainMusicComponents/custom_floating_action_button.dart';
import 'package:wow_music/MainMusicComponents/custom_list_tile.dart';
import 'package:wow_music/MainMusicComponents/top_content.dart';
import 'package:wow_music/MainMusicComponents/gradient_container.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:wow_music/MainMusicView/MainMusicComponents/Custom_Drawer.dart';

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

class MainMusicScreen extends StatefulWidget {
  @override
  _MainMusicScreenState createState() => _MainMusicScreenState();
}

class _MainMusicScreenState extends State<MainMusicScreen> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        key: _sliderDrawerKey,
        appBar: CustomSliderAppBar(sliderKey: _sliderDrawerKey),
        sliderOpenSize: MediaQuery.of(context).size.height,
        slider: CustomDrawer(),
        slideDirection: SlideDirection.topToBottom,
        child: Stack(
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
            const GradientContainer(),
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
      ),
    );
  }
}
