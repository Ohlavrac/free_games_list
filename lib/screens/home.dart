import 'package:flutter/material.dart';
import 'package:free_games_list/shared/components/card_game.dart';
import 'package:free_games_list/shared/components/featured_games_card.dart';
import 'package:free_games_list/shared/components/small_button.dart';
import 'package:free_games_list/shared/themes/app_color.dart';
import 'package:free_games_list/shared/themes/app_text.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List> getGameList() async {
    const request = "https://www.freetogame.com/api/games?platform=pc";
    http.Response response = await http.get(Uri.parse(request));
    return json.decode(response.body);
  }

  Future<List> getGameListPopular() async {
    const request = "https://www.freetogame.com/api/games?sort-by=release-date&sort-by=popularity";
    http.Response response = await http.get(Uri.parse(request));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        title: Text("FreeGames List", style: AppText.title,),
        backgroundColor: AppColor.background,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 190,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Expanded(
                child: FutureBuilder<List>(
                  future: getGameListPopular(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return FeaturedGameCard(image: Image.network(snapshot.data![index]['thumbnail']),);
                        },
                      );
                    }
                    return Center(child: Text("Carregando"),);
                  }
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallButton(label: "Popular", onPressed: () {

                }),
                SmallButton(label: "New", onPressed: () {

                }),
                SmallButton(label: "All", onPressed: () {

                }),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List>(
              future: getGameList(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return CardGame(name: snapshot.data![index]['title'], plataforms: snapshot.data![index]['platform'], image: Image.network(snapshot.data![index]['thumbnail']),);
                    },
                  );
                }
                return Center(child: Text("Carregando"),);
              }
            ),
          ),
        ],
      ),
    );
  }
}