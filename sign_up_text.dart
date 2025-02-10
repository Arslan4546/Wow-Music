import 'package:flutter/material.dart';

class SignUpText extends StatefulWidget {
  final String text;
  final String highlightText;
  final VoidCallback onTap;

  const SignUpText({
    Key? key,
    required this.text,
    required this.highlightText,
    required this.onTap,
  }) : super(key: key);

  @override
  _SignUpTextState createState() => _SignUpTextState();
}

class _SignUpTextState extends State<SignUpText> {
  Color _signUpColor = const Color(0xFFFFD740);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: (_) => setState(() => _signUpColor = Colors.green),
        onExit: (_) => setState(() => _signUpColor = const Color(0xFFFFD740)),
        child: GestureDetector(
          onTap: () {
            setState(() => _signUpColor = Colors.red);
            Future.delayed(const Duration(milliseconds: 200), widget.onTap);
          },
          child: RichText(
            text: TextSpan(
              text: widget.text,
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: widget.highlightText,
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
