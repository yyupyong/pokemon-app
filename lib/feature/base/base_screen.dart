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
            child: Assets.monsterBallGray
                .image(width: 160, height: 160, fit: BoxFit.cover),
          ),
          CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 24,
                  left: 16,
                ),
                sliver: const SliverToBoxAdapter(
                  child: Text(
                    'Pokemon',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 16,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) {
                      return Text(
                        index.toString(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
