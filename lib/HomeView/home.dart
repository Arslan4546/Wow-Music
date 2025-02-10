import 'package:flutter/material.dart';
import 'package:wow_music/HomeView/homeScreenComponents/BottomTextLine.dart';
import 'package:wow_music/HomeView/homeScreenComponents/animated_home_button.dart'; // Add this import
import 'package:wow_music/HomeView/homeScreenComponents/lottie_animation.dart';
import 'package:wow_music/UserEnterSectionView/SignInScreen.dart';
import 'package:wow_music/UserEnterSectionView/signUpScreen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieAnimation(
                assetPath: 'assets/lottie/getStartedLottie.json',
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.08),
              AnimatedHomeButton(
                text: 'Get Started!',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()),
                  );
                },
              ),
              SizedBox(height: size.height * 0.03),
              BottomTextLine(
                textStart: "Already have an account? ",
                textEnd: " Sign In",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
