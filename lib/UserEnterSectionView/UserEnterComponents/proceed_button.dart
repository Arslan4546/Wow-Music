import 'package:flutter/material.dart';

class ProceedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const ProceedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _ProceedButtonState createState() => _ProceedButtonState();
}

class _ProceedButtonState extends State<ProceedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _widthAnimation;
  bool isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Shrinking animation speed
    );

    _widthAnimation = Tween<double>(begin: 250, end: 50).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onPressed();
        Future.delayed(const Duration(milliseconds: 500), () {
          setState(() {
            isAnimating = false;
          });
          _controller.reset();
        });
      }
    });
  }

  void _startAnimation() {
    setState(() {
      isAnimating = true;
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _widthAnimation,
        builder: (context, child) {
          return GestureDetector(
            onTap: isAnimating ? null : _startAnimation,
            child: Container(
              width: _widthAnimation.value,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD740),
                borderRadius: BorderRadius.circular(12),
              ),
              child: isAnimating
                  ? const CircularProgressIndicator(color: Colors.white)
                  : Text(
                      widget.text,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
