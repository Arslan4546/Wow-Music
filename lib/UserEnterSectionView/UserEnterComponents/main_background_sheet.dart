import 'package:flutter/material.dart';

class MainBackgroundSheet extends StatelessWidget {
  final Widget child;

  const MainBackgroundSheet({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.75,
        child: Container(
          padding: const EdgeInsets.all(36),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(36),
            ),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: child,
          ),
        ),
      ),
    );
  }
}
