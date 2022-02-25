import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/helper/helper.dart';
import 'package:pokedex_app/model/pokedex_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokedexModel  pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(Constant.pokeballUrl,
          width: UIHelper.calculatePokeImageAndBall(),
          height: UIHelper.calculatePokeImageAndBall(),
          fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
          width: UIHelper.calculatePokeImageAndBall(),
          height: UIHelper.calculatePokeImageAndBall(),
          fit: BoxFit.fitHeight,
            imageUrl: pokemon.img ?? '* ',
            placeholder: (context , url ) => const CircularProgressIndicator(
              color: Colors.red,
            ),),
        )
      ],
    );
  }
}