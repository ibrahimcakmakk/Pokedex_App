import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/helper/helper.dart';

class AppTitle extends StatelessWidget {
   AppTitle({Key? key}) : super(key: key);
  String pokeballUrl = 'assets/poketop.jpg'; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(alignment: Alignment.centerLeft,
            child: Text(Constant.titlee, style: Constant.getTitleStyle(),)),
          ),
          Padding(
            padding: UIHelper.getIconPadding(),
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(pokeballUrl,
              width: ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,
              fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}