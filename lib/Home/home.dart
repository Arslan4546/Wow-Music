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
                  'assets/lottie/music_ring.json', // Replace with your Lottie file path
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(
                  height: size.height *
                      0.04), // Spacing adjusted for responsiveness
              Text(
                'Let\'s get started!',
                style: TextStyle(
                  fontSize: size.width * 0.07, // Responsive font size
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFCE59),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: size.height *
                      0.08), // Spacing adjusted for responsiveness
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFCE59), // Yellow color for button
                  minimumSize: Size(size.width * 0.9,
                      size.height * 0.07), // Responsive button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: size.width * 0.05, // Responsive text size
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03), // Spacing for the text link
              GestureDetector(
                onTap: () {
                  // Handle log-in tap event
                },
                child: Text(
                  'Already have an account? Log In',
                  style: TextStyle(
                    color: Color(0xFFFFCE59),
                    fontSize: size.width * 0.04, // Responsive font size
                    decoration: TextDecoration.underline,
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
