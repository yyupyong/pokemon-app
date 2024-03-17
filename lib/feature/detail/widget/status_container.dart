import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = (screenWidth - 48 - 12) / 2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('heigh'),
        Container(
          width: containerWidth,
          decoration: BoxDecoration(border: Border.all()),
          child: const Center(
            child: Text('dddd'),
          ),
        ),
      ],
    );
  }
}
