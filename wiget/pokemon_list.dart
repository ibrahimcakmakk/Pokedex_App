import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/wiget/pokedex_item.dart';

import '../model/pokedex_model.dart';
import '../main.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokedexModel>> _pokemonListFuture;
  @override
  void initState() {
      super.initState();
      _pokemonListFuture = PokeApi.getPokemonData();
  }
  
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<PokedexModel>>(
        future: _pokemonListFuture,
        builder: (context , snapshot) {
          if (snapshot.hasData) {
            List<PokedexModel> _listem = snapshot.data!;
            return GridView.builder(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3),

              itemBuilder: (context , index) {
                return PokedexItem(pokemon: _listem[index]);
              }
              );
          }else if(snapshot.hasError){
            return const Center(
              child: Text('Hata Çıktı'),
            );
          }else{
            return const Center(
              child: Text('Hata Çıktııı'),
            );
          }
        },
      );
  }
}

