import 'dart:ui';

import 'package:flutter/material.dart';

Widget discountsCard({String link, String title, String description}) {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          height: 125,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: NetworkImage(link), fit: BoxFit.fill)),
        ),
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
                height: 125,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.20),
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    ),
  );
}
