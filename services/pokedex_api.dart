import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedex_app/model/pokedex_model.dart';

class PokeApi{
  static const String _url =
  'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

static Future<List<PokedexModel>> getPokemonData() async{
  List<PokedexModel> _list = [];

var result = await Dio().get(_url);

var pokeList = jsonDecode(result.data)['pokemon'];






if (pokeList is List) {
  _list = pokeList.map((e) => PokedexModel.fromJson(e)).toList();
}
else{
  return [];
}


return _list;
}


}
