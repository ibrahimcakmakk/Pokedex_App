import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/helper/helper.dart';
import 'package:pokedex_app/model/pokedex_model.dart';
import 'package:pokedex_app/wiget/poke_type_name.dart';
import 'package:pokedex_app/wiget/pokemon_information.dart';

class DetailPage extends StatelessWidget {
  final PokedexModel pokemon;
  
    DetailPage({Key? key, required this.pokemon}) : super(key: key);
  String pokeball = 'assets/poketop.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: IconButton(
                iconSize: 18,
                onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(pokemon: pokemon),
            SizedBox(height: 20,),
            Expanded(child: Stack(
              children: [
                Positioned(child: Image.asset(pokeball), bottom: 0,left: 0,right: 0,top: 50,),
                Positioned(child: PokeInformation(pokemon: pokemon),
                bottom: 0,
                left: 0,
                right: 0,
                top: 0,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(imageUrl: pokemon.img ?? ' ',
                   height: 100,
                   fit: BoxFit.fitHeight,),
                ),
              ],
            ) )
          ],
        ),
      ),
    );
  }
}