import 'dart:ui';

import 'package:book_app/widget/livros_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: media.height / 1.65),
            child: Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQCn4AMVUlexDZcOeJar2uoTDE_CgcvA0YKycQIYA3wF7wH5Bqh",
                width: double.infinity,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: media.height / 1.65),
            child: ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: new Container(
                  width: double.infinity,
                  height: 200,
                  decoration:
                      new BoxDecoration(color: Colors.black.withOpacity(0.20)),
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
                  size: 50,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: media.height / 20.4, right: 90),
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
            padding: EdgeInsets.only(top: media.height / 3.20, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Anísio Isidoro Gomes",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                SizedBox(
                  height: 5,
                ),
                Text("@anisioisidoro",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                      "O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500, quando uma misturou os caracteres de um texto para criar um espécime de livro."),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Card(
                      elevation: 15,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF003459),
                            borderRadius: BorderRadius.circular(5)),
                        width: 150,
                        height: 40,
                        child: Center(
                            child: Text(
                          "Collection",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    SizedBox(width: media.width / 10),
                    Container(
                      //  color: Color(0xFFF003459),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Color(0xFFF003459)),
                          borderRadius: BorderRadius.circular(10)),
                      width: 150,
                      height: 40,
                      child: Center(
                          child: Text(
                        "Upload",
                        style: TextStyle(color: Color(0xFFF003459)),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height / 30,
                ),
                Text("Last Bought",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                SizedBox(
                  height: media.height / 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      livrosCard(
                          link:
                              "https://images.tcdn.com.br/img/img_prod/689663/o_livro_da_gratidao_181_1_20190905160357.png",
                          author: "José Roberto",
                          price: "15.000.00 Kz",
                          title: "O Livro da Gratidão"),
                      livrosCard(
                          link:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7KpZOTQ1BmTG-SKzK_ILSYsZ5YIek95KSaiF9fPT-oqmGT4-j&s",
                          author: "Robert Bryndza",
                          price: "16.000.00 Kz",
                          title: "A Garota no Gelo"),
                      livrosCard(
                          link:
                              "https://images-shoptime.b2w.io/produtos/01/00/item/7421/3/7421392GG.jpg",
                          author: "Max Lucado",
                          price: "29.000.00 Kz",
                          title: "Você Mudou Minha Vida...")
                    ],
                  ),
                ),
                ///////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: media.height / 30,
                ),
                Text("You Seen This",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                SizedBox(
                  height: media.height / 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      livrosCard(
                          link:
                              "https://2.bp.blogspot.com/-Q6GtIYWMZcE/XGc0GlKnu3I/AAAAAAAACJQ/W6nIrEgmx3sLvdOkoGOxPwA-E2lNFr1XQCLcBGAs/s1600/50921735_2103172306427889_6755052914504368128_n.jpg",
                          author: "Nora Roberts",
                          //  price: "15.000.00 Kz",
                          title: "Resgatado pelo Amor"),
                      livrosCard(
                          link:
                              "https://nerdstore.com.br/wp-content/uploads/2019/10/livro-o-senhor-do-tempo-marcio-pacheco-01A.jpg",
                          author: "Márcio Pacheco",
                          // price: "16.000.00 Kz",
                          title: "O Senhor do Tempo"),
                      livrosCard(
                          link:
                              "https://www.sesispeditora.com.br/wp-content/uploads/2018/06/a-flauta-magica-1.jpg",
                          author: "Del Candeias",
                          // price: "29.000.00 Kz",
                          title: "A Flauta Mágica")
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: media.height / 4, left: 15, top: media.height / 5.60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQCn4AMVUlexDZcOeJar2uoTDE_CgcvA0YKycQIYA3wF7wH5Bqh")))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
