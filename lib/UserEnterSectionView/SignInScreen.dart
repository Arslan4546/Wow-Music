import 'package:flutter/material.dart';
import 'package:wow_music/UserEnterSectionView/UserEnterComponents/BottomText.dart';
import 'package:wow_music/UserEnterSectionView/UserEnterComponents/CustomTextFormField.dart';
import 'package:wow_music/UserEnterSectionView/UserEnterComponents/SocialIconButton.dart';
import 'package:wow_music/UserEnterSectionView/UserEnterComponents/proceed_button.dart';
import 'package:wow_music/UserEnterSectionView/UserEnterComponents/lottie_animation.dart';
import 'package:wow_music/UserEnterSectionView/UserEnterComponents/main_background_sheet.dart';
import 'package:wow_music/UserEnterSectionView/signUpScreen.dart';
import 'package:wow_music/demo.dart'; // Import the DemoScreen

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD740),
      body: Stack(
        children: [
          // Lottie Animation at the top
          const LottieAnimation(assetPath: 'assets/lottie/signup_lottie.json'),
          // Bottom Sheet-like Signup Form
          MainBackgroundSheet(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const CustomTextFormField(
                  labelText: "Email Address",
                ),
                const SizedBox(height: 16),
                const CustomTextFormField(
                  labelText: "Password",
                  isPassword: true,
                ),
                const SizedBox(height: 24),
                ProceedButton(
                  text: "Sign In",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DemoScreen()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    "Or",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIconButton(
                      icon: Icons.g_mobiledata,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(width: 16),
                    SocialIconButton(
                      icon: Icons.apple,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(width: 16),
                    SocialIconButton(
                      icon: Icons.facebook,
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                BottomText(
                  textStart: "Don't have an account? ",
                  textEnd: " Sign Up",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
