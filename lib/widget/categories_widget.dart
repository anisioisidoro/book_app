import 'package:flutter/material.dart';

Widget cateagoriaCard({String title, IconData icon}) {
  return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF003459), borderRadius: BorderRadius.circular(5)),
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ));
}
