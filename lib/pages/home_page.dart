import 'package:flutter/material.dart';
import 'package:pokedex_uygulamasi/widgets/app_title.dart';
import 'package:pokedex_uygulamasi/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Column(
        children: [
          AppTitle(),
          Expanded(child: const PokemonList())
        ],
      ),
    );
  }
}
