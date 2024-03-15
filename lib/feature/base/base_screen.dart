import 'package:flutter/material.dart';
import 'package:pokemon_app/gen/assets.gen.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -24,
            child: Assets.monsterBallGray.image(),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 24,
            left: 16,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pokemon',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).padding.top + 24,
            left: 16,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (ctx, i) {
                return Text(
                  i.toString(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
