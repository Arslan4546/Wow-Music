import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo Screen')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Demo Screen',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
