import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokedex_model.dart';
import 'package:pokedex_app/pages/app_title.dart';
import 'package:pokedex_app/services/pokedex_api.dart';
import 'package:pokedex_app/wiget/pokemon_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OrientationBuilder(
         builder : (context, orientation) =>  Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        )
      )
    );
  }
}