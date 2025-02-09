import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen(),
    );
  }
}

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:
          const Color(0xFF6A4DA5), // Background color matching top container
      body: Stack(
        children: [
          // Lottie Animation at the top
          SizedBox(
            width: double.infinity,
            height: size.height * 0.45,
            child: Center(
              child: SizedBox(
                height: size.height * 0.25,
                child: Lottie.asset(
                  'assets/lottie/music_ring.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          // Bottom Sheet-like Signup Form
          Positioned(
            top: size.height * 0.28,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * 0.72,
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Full name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: const Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFD740),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      "Or",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Social Buttons
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIconButton(
                        icon: Icons.g_mobiledata,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(width: 16),
                      SocialIconButton(
                        icon: Icons.apple,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 16),
                      SocialIconButton(
                        icon: Icons.facebook,
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Log In Option
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Already have an account? Log In"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;

  const SocialIconButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 24,
      child: Icon(icon, color: Colors.white),
    );
  }
}
