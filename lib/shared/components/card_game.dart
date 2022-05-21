import 'package:flutter/material.dart';
import 'package:free_games_list/shared/themes/app_color.dart';
import 'package:free_games_list/shared/themes/app_text.dart';

class CardGame extends StatelessWidget {
  final String name;
  final String plataforms;
  final Image image;
  const CardGame({ Key? key, required this.name, required this.plataforms, required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          print("Tap");
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: image
        ),
        title: Text(name, style: AppText.nameGame,),
        subtitle: Text(plataforms, style: AppText.gamePlataform,),
        trailing: Container(
          //color: AppColor.extra,
          decoration: BoxDecoration(
            color: AppColor.extra,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Free", style: AppText.price,),
          )
        ),
      ),
    );
  }
}