import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon app'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            color: Colors.red,
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
