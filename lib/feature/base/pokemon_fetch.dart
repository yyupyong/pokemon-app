import 'package:pokemon_app/feature/base/model/pokemon.dart';
import 'package:pokemon_app/feature/base/model/pokemon_detail.dart';
import 'package:pokemon_app/service/api/api_client.dart';
import 'package:pokemon_app/service/paging/model/paging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_fetch.g.dart';

@riverpod
Future<Paging<Pokemon>> fetchPokemonList(FetchPokemonListRef ref) {
  return ref.watch(pokemonApiClientProvider).get<Paging<Pokemon>>(
        path: 'pokemon',
        decoder: (json) => Paging.fromJson(json, Pokemon.fromJson),
      );
}

@riverpod
Future<PokemonDetail> fetchPokemonDetail(FetchPokemonDetailRef ref, int id) {
  return ref.watch(pokemonApiClientProvider).get<PokemonDetail>(
        path: 'pokemon/$id',
        decoder: PokemonDetail.fromJson,
      );
}
