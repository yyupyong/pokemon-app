import 'package:flutter/material.dart';
import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({super.key, required this.poke});

  final PokemonDetail poke;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
