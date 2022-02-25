import 'package:flutter/material.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/helper/helper.dart';
import 'package:pokedex_app/model/pokedex_model.dart';
import 'package:pokedex_app/pages/detail_pages.dart';
import 'package:pokedex_app/wiget/poke_img_and_ball.dart';

class PokedexItem extends StatelessWidget {
  PokedexModel pokemon;
   PokedexItem({Key? key,required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(pokemon: pokemon) ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
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
              Text(pokemon.name ?? 'N/A', style: Constant.getTitleStyle() ,),
              Chip(label: Text(pokemon.type![0])),
              Expanded(child: PokeImageAndBall(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}