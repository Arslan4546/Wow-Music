import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wow_music/OnBoradingView/on_borading_view.dart';

class HeadphoneScreen extends StatefulWidget {
  const HeadphoneScreen({super.key});

  @override
  _HeadphoneScreenState createState() => _HeadphoneScreenState();
}

class _HeadphoneScreenState extends State<HeadphoneScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);

    // Navigate to HomeScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnBoardingView()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A90E2),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              size: Size(250, 250),
              painter: HeadphonePainter(_controller.value),
            );
          },
        ),
      ),
    );
  }
}

class HeadphonePainter extends CustomPainter {
  final double animationValue;

  HeadphonePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;

    double centerX = size.width / 2;
    double centerY = size.height / 2;

    // 🎧 Headphone Arc
    Rect headphoneRect =
        Rect.fromCircle(center: Offset(centerX, centerY - 10), radius: 70);
    canvas.drawArc(headphoneRect, 3.14, 3.14, false, paint);

    // 📦 Ear Pads
    Paint padPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    double earPadWidth = 20;
    double earPadHeight = 60;
    double innerHeight = earPadHeight - 20;

    // Left Side Ear Pads
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
                centerX - 80, centerY - 10, earPadWidth, earPadHeight),
            Radius.circular(10)),
        padPaint);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(centerX - 55, centerY, earPadWidth, innerHeight),
            Radius.circular(10)),
        padPaint);

    // Right Side Ear Pads
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(centerX + 35, centerY, earPadWidth, innerHeight),
            Radius.circular(10)),
        padPaint);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
                centerX + 60, centerY - 10, earPadWidth, earPadHeight),
            Radius.circular(10)),
        padPaint);

    // 🌊 Centered Wavy Lines (Animated)
    Paint wavePaint = Paint()
      ..color = Colors.white.withOpacity(1)
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    int numLines = 6; // Total lines
    double spacing = 10; // Space between each line

    for (int i = 0; i < numLines; i++) {
      double x = centerX - (numLines / 2) * spacing + (i * spacing);
      double waveOffset = sin(animationValue * pi * 2 + i) * 10; // Wavy motion

      canvas.drawLine(
        Offset(x + 5, centerY - 35 + waveOffset),
        Offset(x + 5, centerY + 35 + waveOffset),
        wavePaint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
