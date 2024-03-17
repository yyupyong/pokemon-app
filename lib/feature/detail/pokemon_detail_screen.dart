import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pokemon_app/const/pokeapi_color.dart';
import 'package:pokemon_app/feature/detail/widget/detail_container.dart';
import 'package:pokemon_app/feature/detail/widget/status_container.dart';
import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';
import 'package:pokemon_app/feature/detail/widget/type_tag.dart';
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
                    ?.withOpacity(.6),
              ),
            ),
          ),
          Positioned(
            right: -24,
            child: Assets.monsterBallWhite
                .image(width: 180, height: 180, fit: BoxFit.cover),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          poke.name,
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '#${poke.id}',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TypeTag(typeList: poke.types),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Image.network(
                  poke.sprites.other.officialArtwork.frontDefault,
                  height: 260,
                  width: 260,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DetailContainer(
                      label: 'Height',
                      value: poke.height.toString(),
                    ),
                    DetailContainer(
                      label: 'Weight',
                      value: poke.weight.toString(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          StatsContainer(
                            label: 'HP',
                            statusValue: poke.stats[0].baseStat.toString(),
                          ),
                          const SizedBox(width: 16),
                          StatsContainer(
                            label: 'Attack',
                            statusValue: poke.stats[1].baseStat.toString(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          StatsContainer(
                            label: 'defense',
                            statusValue: poke.stats[2].baseStat.toString(),
                          ),
                          const SizedBox(width: 16),
                          StatsContainer(
                            label: 'speed',
                            statusValue: poke.stats[5].baseStat.toString(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          StatsContainer(
                            label: 'special-attack',
                            statusValue: poke.stats[3].baseStat.toString(),
                          ),
                          const SizedBox(width: 16),
                          StatsContainer(
                            label: 'special-defense',
                            statusValue: poke.stats[4].baseStat.toString(),
                          ),
                        ],
                      ),
                    ],
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
