import 'package:flutter/material.dart';
import 'package:pokemon_app/const/pokeapi_color.dart';
import 'package:pokemon_app/feature/home/model/pokemon_detail.dart';

class TypeTag extends StatelessWidget {
  const TypeTag({super.key, required this.typeList});

  final List<PokemonType> typeList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 4,
      children: typeList.map((e) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: pokeTypeColors[e.type.name] ?? Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            e.type.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }).toList(),
    );
  }
}
