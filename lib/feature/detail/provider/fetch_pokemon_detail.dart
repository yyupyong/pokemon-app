import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';
import 'package:pokemon_app/service/api/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_pokemon_detail.g.dart';

@Riverpod(keepAlive: true)
Future<PokemonDetail> fetchPokemonDetail(FetchPokemonDetailRef ref, int id) {
  return ref.watch(pokemonApiClientProvider).get<PokemonDetail>(
        path: 'pokemon/$id',
        decoder: PokemonDetail.fromJson,
      );
}
