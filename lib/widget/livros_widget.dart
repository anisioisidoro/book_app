import 'package:flutter/material.dart';

Widget livrosCard({String link, String title, String author, String price}) {
  return Container(
    child: Card(
      //elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF003459),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10)),
            ),
            child: Image.network(link, fit: BoxFit.none),
            height: 100,
            width: 100,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)),
              boxShadow: [
                new BoxShadow(
                    color: Color(0xFFF003459),
                    //blurRadius: 1.0,
                    offset: new Offset(0, 1))
              ],
            ),
            height: 100,
            width: 140,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(author,
                      style: TextStyle(color: Colors.white.withOpacity(0.6))),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white.withOpacity(0.6),
                      ),
                      Icon(Icons.star, color: Colors.white.withOpacity(0.6)),
                    ],
                  ),
                  Text(
                    price ?? "",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
