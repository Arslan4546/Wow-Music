import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wow_music/OnBoardingView/on_borading_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/lottie/splash_anim.json',
          width: 350,
          height: 350,
          fit: BoxFit.fill,
          onLoaded: (composition) {
            Future.delayed(composition.duration, () {
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const OnBoardingView()));
            });
          },
        ),
      ),
    );
  }
}
