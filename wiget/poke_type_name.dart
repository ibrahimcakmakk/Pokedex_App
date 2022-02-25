import 'package:flutter/material.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/helper/helper.dart';
import 'package:pokedex_app/model/pokedex_model.dart';

class PokeNameType extends StatelessWidget {
  final PokedexModel pokemon; 
  
  const PokeNameType({ Key? key , required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(pokemon.name ?? '' , style: Constant.getPokemonNameStyle(),)),
              Text('#${pokemon.num}' ,style: Constant.getPokemonNameStyle(),)
            ],
          ),
          SizedBox(
            height: 0.02,
          ),
          Chip(label: Text(pokemon.type?.join(' , ') ?? '', style: Constant.getTypeChipTextStyle())),
        ]
          
      ),
    );
  }
}