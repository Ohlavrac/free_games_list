import 'package:flutter/material.dart';
import 'package:free_games_list/shared/themes/app_text.dart';

class FeaturedGameCard extends StatelessWidget {
  final Image image;
  const FeaturedGameCard({ Key? key, required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: image
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(alignment: Alignment.bottomLeft,child: Text("Free", style: AppText.pricePrimary,)),
          ),
        ],
      ),
    );
  }
}