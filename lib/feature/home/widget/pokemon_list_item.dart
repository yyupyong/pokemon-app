import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/const/pokeapi_color.dart';
import 'package:pokemon_app/feature/detail/pokemon_detail_screen.dart';
import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';

class PokemonListItem extends ConsumerWidget {
  const PokemonListItem({super.key, required this.poke});
  final PokemonDetail? poke;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (poke == null) {
      return const ListTile(title: Text('...'));
    }

    final nonNullPoke = poke!;

    return ListTile(
      leading: Hero(
        tag: 'pokemon_${nonNullPoke.id}',
        child: Container(
          width: 80,
          decoration: BoxDecoration(
            color: (pokeTypeColors[nonNullPoke.types.first.type.name] ??
                    Colors.grey[100])
                ?.withOpacity(.3),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                nonNullPoke.sprites.other.officialArtwork.frontDefault,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        nonNullPoke.name,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        '#${nonNullPoke.id}',
        style: const TextStyle(color: Colors.blueGrey),
      ),
      trailing: const Icon(Icons.navigate_next),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => PokemonDetailScreen(
              poke: nonNullPoke,
            ),
          ),
        );
      },
    );
  }
}
