import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final int index;

  const CustomListTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.play_circle_fill,
              color: Color(0xFFFFD740), size: 40), // Updated color and size
          title: Text('Track name 0${index + 1}'),
          trailing: Text('${(3 + index)}:${(10 + index * 5) % 60}'),
        ),
        const SizedBox(height: 10), // Gap between ListTiles
      ],
    );
  }
}
