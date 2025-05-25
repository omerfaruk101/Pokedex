import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_uygulamasi/constants/constants.dart';
import 'package:pokedex_uygulamasi/constants/ui_helper.dart';
import 'package:pokedex_uygulamasi/model/pokemon_model.dart';
import 'package:pokedex_uygulamasi/pages/detail.dart';
import 'package:pokedex_uygulamasi/widgets/poke_img_and_ball.dart';

class PokelistItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokelistItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetailPage(pokemon: pokemon)),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.w),
          ),
          elevation: 3,
          shadowColor: Colors.white,
          color: UIHelper.getColorFromType(pokemon.type![0]),
          child: Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.name ?? "NA",
                  style: Constants.getPokemonNameTextStyle(),
                ),
                Chip(label: Text(pokemon.type![0])),
                Expanded(child: PokeImgAndBall(pokemon: pokemon)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
