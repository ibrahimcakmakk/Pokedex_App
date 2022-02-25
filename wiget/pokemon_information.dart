import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/helper/helper.dart';
import 'package:pokedex_app/model/pokedex_model.dart';

class PokeInformation extends StatelessWidget {
  final PokedexModel pokemon;
 
  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: 
        BorderRadius.all(Radius.circular(10),),
         color: Colors.white,
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          
            
              children: [
                _buildInformationRow('Name', pokemon.name),
                _buildInformationRow('Height', pokemon.height),
                _buildInformationRow('Weight', pokemon.weight),
                _buildInformationRow('Spawn Time', pokemon.spawnTime),
                _buildInformationRow('Weakness', pokemon.weaknesses),
                _buildInformationRow('Pre Evolution', pokemon.prevEvolution),
                _buildInformationRow('Next Evolution', pokemon.nextEvolution),
                
              ],
            ),
      )
        
      );
    
  }

  _buildInformationRow(String label,dynamic value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(label, style: Constant.getPokeInfoTextStyle(),),
        ),
        if (value is List && value.isNotEmpty) 
        Text(value.join(','))
        else if (value == null)
        Text('Not Avaible')
        else
        Text(value),
        
        
        
        
      ],
    );
  }
}

