import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final size = MediaQuery.of(context).size;

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
                onPressed: () {},
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
                child: RichText(
                  text: const TextSpan(
                    text: 'Don"t have an account? ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xFFFFD740),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFFFFD740),
                        ),
                      ),
                    ],
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
