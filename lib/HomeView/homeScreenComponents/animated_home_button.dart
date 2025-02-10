import 'package:flutter/material.dart';

class AnimatedHomeButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const AnimatedHomeButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AnimatedHomeButtonState createState() => _AnimatedHomeButtonState();
}

class _AnimatedHomeButtonState extends State<AnimatedHomeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600), // Animation duration
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _fadeAnimation = Tween<double>(begin: 1.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate after animation
        widget.onPressed();
        _controller.reset();
      }
    });
  }

  void _startAnimation() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _fadeAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: ElevatedButton(
              onPressed: _startAnimation,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFD640),
                minimumSize: Size(size.width * 0.9, size.height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                widget.text,
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
