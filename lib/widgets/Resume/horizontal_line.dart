import 'package:flutter/material.dart';

class HorizontalBlueLine extends StatelessWidget {
  const HorizontalBlueLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 2),
          ),
        ),
        Expanded(
          // 👈 this will now stretch properly inside IntrinsicHeight
          child: Container(width: 1.5, color: Colors.blue),
        ),
      ],
    );
  }
}
