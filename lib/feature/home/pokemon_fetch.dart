import 'package:pokemon_app/feature/home/model/pokemon.dart';
import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';
import 'package:pokemon_app/service/api/api_client.dart';
import 'package:pokemon_app/service/paging/model/paging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_fetch.g.dart';

@Riverpod(keepAlive: true)
Future<Paging<Pokemon>> fetchPokemonList(FetchPokemonListRef ref) {
  return ref.watch(pokemonApiClientProvider).get<Paging<Pokemon>>(
        path: 'pokemon',
        queryParams: {'limit': '100'},
        decoder: (json) => Paging.fromJson(json, Pokemon.fromJson),
      );
}

@Riverpod(keepAlive: true)
Future<PokemonDetail> fetchPokemonDetail(FetchPokemonDetailRef ref, int id) {
  return ref.watch(pokemonApiClientProvider).get<PokemonDetail>(
        path: 'pokemon/$id',
        decoder: PokemonDetail.fromJson,
      );
}
