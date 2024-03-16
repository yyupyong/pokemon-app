import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/feature/base/pokemon_fetch.dart';
import 'package:pokemon_app/gen/assets.gen.dart';

class BaseScreen extends ConsumerWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonList = ref.watch(fetchPokemonListProvider);

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -24,
            child: Assets.monsterBallGray
                .image(width: 160, height: 160, fit: BoxFit.cover),
          ),
          pokemonList.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            data: (data) {
              return CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top + 24,
                      left: 16,
                    ),
                    sliver: const SliverToBoxAdapter(
                      child: Text(
                        'Pokemon',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
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
                        childCount: data.items.length,
                        (context, index) {
                          return Text(
                            data.items[index].name,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
