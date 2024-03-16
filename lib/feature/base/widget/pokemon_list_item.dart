import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/const/pokeapi_color.dart';
import 'package:pokemon_app/feature/base/model/pokemon_detail.dart';

class PokemonListItem extends ConsumerWidget {
  const PokemonListItem({super.key, required this.poke});
  final PokemonDetail? poke;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (poke != null) {
      return ListTile(
        leading: Container(
          width: 80,
          decoration: BoxDecoration(
            color: (pokeTypeColors[poke!.types.first.type.name] ??
                    Colors.grey[100])
                ?.withOpacity(.3),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                poke!.sprites.other.officialArtwork.frontDefault,
              ),
            ),
          ),
        ),
        title: Text(
          poke!.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(poke!.types.first.type.name),
        trailing: const Icon(Icons.navigate_next),
        onTap: () => {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (BuildContext context) => const PokeDetail(),
          //   ),
          // ),
        },
      );
    } else {
      return const ListTile(title: Text('...'));
    }
  }
}
