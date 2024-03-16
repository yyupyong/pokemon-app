import 'package:flutter/material.dart';
import 'package:pokemon_app/const/pokeapi_color.dart';
import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';
import 'package:pokemon_app/gen/assets.gen.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({super.key, required this.poke});

  final PokemonDetail poke;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: (pokeTypeColors[poke.types.first.type.name] ??
                        Colors.grey[100])
                    ?.withOpacity(.5),
              ),
            ),
          ),
          Positioned(
            right: -24,
            child: Assets.monsterBallWhite
                .image(width: 160, height: 160, fit: BoxFit.cover),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  poke.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Column(
              children: [
                Image.network(
                  poke.sprites.other.officialArtwork.frontDefault,
                  height: 160,
                  width: 160,
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    width: double.infinity,
                    child: const Column(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
