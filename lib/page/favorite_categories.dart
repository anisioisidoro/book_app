import 'dart:ui';

import 'package:book_app/widget/categories_widget.dart';
import 'package:book_app/widget/discount_widget.dart';
import 'package:book_app/widget/favorite_categories_widget.dart';
import 'package:book_app/widget/livros_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: media.height / 250),
            child: Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQCn4AMVUlexDZcOeJar2uoTDE_CgcvA0YKycQIYA3wF7wH5Bqh",
                width: double.infinity,
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: media.height / 1.65),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  width: double.infinity,
                  height: 280,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.20)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 15,
              top: media.height / 20.4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: media.height / 24.4, right: 66),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(top: media.height / 3.50, left: 15, right: 15),
            child: Column(
              children: <Widget>[
                favoriteCategoriesCard(
                    icon: FontAwesomeIcons.church,
                    desription:
                        "Teologia, do grego θεολογία, é o estudo crítico da natureza do divino, deuses ou Deus",
                    title: "Theology"),
                favoriteCategoriesCard(
                    icon: FontAwesomeIcons.starOfLife,
                    desription: "Live Improvement",
                    title: "Live Improvement"),
                favoriteCategoriesCard(
                    icon: FontAwesomeIcons.artstation,
                    desription:
                        "Uma ação, tal como os filósofos usam o termo, é um certo tipo de...",
                    title: "Action"),
                favoriteCategoriesCard(
                    icon: Icons.terrain,
                    desription:
                        "Um experimento social é um tipo de pesquisa psicológica.",
                    title: "Social Experiment"),
                favoriteCategoriesCard(
                    icon: FontAwesomeIcons.school,
                    desription:
                        "sistema de adquirir conhecimento baseado no método científico bem como..",
                    title: "Science"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: media.height / 4, left: 15, top: media.height / 7.60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: media.width / 1.2,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Text("Anísio Isidoro Gomes",
                              style: TextStyle(color: Colors.black45)),
                        ),
                        Spacer(),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            child: Icon(
                              Icons.category,
                              color: Colors.black45,
                            ))
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
