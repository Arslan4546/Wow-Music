import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wow_music/SignUpSection/signUpScreen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final size = MediaQuery.of(context).size;
    Color _signUpColor = const Color(0xFFFFD740); // Default Sign Up Color

    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.35, // Responsive animation height
                child: Lottie.asset(
                  'assets/lottie/getStartedLottie.json', // Replace with your Lottie file path
                  fit: BoxFit.contain,
                ),
              ),

              // Spacing adjusted for responsiveness

              SizedBox(
                  height: size.height *
                      0.08), // Spacing adjusted for responsiveness
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFFFD640), // Yellow color for button
                  minimumSize: Size(size.width * 0.9,
                      size.height * 0.07), // Responsive button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Get Started!',
                  style: TextStyle(
                    fontSize: size.width * 0.05, // Responsive text size
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03), // Spacing for the text link
              Center(
                child: MouseRegion(
                  onEnter: (_) => setState(
                      () => _signUpColor = Colors.green), // Hover Effect
                  onExit: (_) => setState(() =>
                      _signUpColor = const Color(0xFFFFD740)), // Normal Color

                  child: GestureDetector(
                    onTap: () {
                      setState(() =>
                          _signUpColor = Colors.red); // Click par Red ho jaye

                      Future.delayed(const Duration(milliseconds: 200), () {
                        // Delay ke baad navigation
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()),
                        );
                      });
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: _signUpColor,
                              decoration: TextDecoration.underline,
                              decorationColor: _signUpColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
