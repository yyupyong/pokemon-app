import 'package:flutter/material.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    var displayValue = value;
    var unit = '';

    if (label.toLowerCase() == 'weight') {
      final weight = double.parse(value);
      unit = 'kg';
      displayValue = (weight / 10).toStringAsFixed(1);
    } else if (label.toLowerCase() == 'height') {
      final height = double.parse(value);
      unit = 'cm';
      displayValue = (height * 10).toStringAsFixed(0);
    }

    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '$displayValue $unit',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
