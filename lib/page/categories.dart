import 'dart:ui';
import 'package:book_app/widget/categories_widget.dart';
import 'package:book_app/widget/discount_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatelessWidget {
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
            padding: EdgeInsets.only(top: media.height / 4.15, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    cateagoriaCard(
                      icon: Icons.book,
                      title: "E-BOOK",
                    ),
                    SizedBox(
                      width: media.width / 15,
                    ),
                    cateagoriaCard(
                      icon: Icons.audiotrack,
                      title: "Audio Book",
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height / 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    cateagoriaCard(
                      icon: FontAwesomeIcons.file,
                      title: "Documentary",
                    ),
                    SizedBox(
                      width: media.width / 15,
                    ),
                    cateagoriaCard(
                      icon: FontAwesomeIcons.file,
                      title: "Short Files",
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height / 60,
                ),
                Text("Discounts",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                SizedBox(
                  height: media.height / 55,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      discountsCard(
                          link:
                              "https://abrilexame.files.wordpress.com/2017/10/maskarad.jpg",
                          title: "February Times",
                          description:
                              "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica"),
                      discountsCard(
                          link:
                              "https://blog.contentools.com.br/wp-content/uploads/2017/06/livros-1024x618.jpg",
                          title:
                              "5 Livros sobre produtividade que você deveria ler",
                          description:
                              "Existem milhares de livros sobre produtividade disponíveis. "),
                      discountsCard(
                          link:
                              "https://previews.123rf.com/images/olegdudko/olegdudko1802/olegdudko180200079/94641367-foto-da-pilha-de-livros-velhos-livro-superior-est%C3%A1-aberto-com-conjunto-de-infogr%C3%A1ficos-conceito-de-imagi.jpg",
                          title: "Foto de archivo",
                          description:
                              "Foto de archivo - Foto da pilha de livros velhos. livro superior está aberto com conjunto de infográficos. conceito de imaginação")
                    ],
                  ),
                ),
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
