import 'package:flutter/material.dart';

Widget favoriteCategoriesCard(
    {IconData icon, String title, String desription}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 110,
        decoration: BoxDecoration(shape: BoxShape.circle),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Colors.black45,
            ),
            SizedBox(
              width: 20,
              height: 23,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: Colors.black45),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    width: 200,
                    child: Text(desription,
                        overflow: TextOverflow.clip,
                        style: TextStyle(color: Colors.black45)))
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
