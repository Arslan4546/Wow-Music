import 'package:flutter/material.dart';

class BottomText extends StatefulWidget {
  final String textStart;
  final String textEnd;
  final VoidCallback onTap;

  const BottomText({
    Key? key,
    required this.textStart,
    required this.textEnd,
    required this.onTap,
  }) : super(key: key);

  @override
  _BottomTextState createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  Color _signUpColor = const Color(0xFFFFD740);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: (_) => setState(() => _signUpColor = Colors.green),
        onExit: (_) => setState(() => _signUpColor = const Color(0xFFFFD740)),
        child: GestureDetector(
          onTap: () {
            setState(
              () => _signUpColor = const Color(0xFFFFD640),
            );
            Future.delayed(const Duration(milliseconds: 100), widget.onTap);
          },
          child: RichText(
            text: TextSpan(
              text: widget.textStart,
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: widget.textEnd,
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
    );
  }
}
