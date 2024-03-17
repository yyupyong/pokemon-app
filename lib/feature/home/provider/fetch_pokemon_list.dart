import 'package:pokemon_app/feature/home/model/pokemon.dart';
import 'package:pokemon_app/service/api/api_client.dart';
import 'package:pokemon_app/service/paging/model/paging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_pokemon_list.g.dart';

@Riverpod(keepAlive: true)
Future<Paging<Pokemon>> fetchPokemonList(FetchPokemonListRef ref) {
  return ref.watch(pokemonApiClientProvider).get<Paging<Pokemon>>(
        path: 'pokemon',
        queryParams: {'limit': '100'},
        decoder: (json) => Paging.fromJson(json, Pokemon.fromJson),
      );
}
