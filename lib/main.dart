import 'package:book_app/page/categories.dart';
import 'package:book_app/page/favorite_categories.dart';
import 'package:book_app/page/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currenIndex = 0;
  List<Widget> _childs = [Home(), Categories(), FavoriteCategories()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        
          showUnselectedLabels: true,
          backgroundColor: Color(0xFFF00171F),
          currentIndex: currenIndex,
          onTap: (index) {
            setState(() {
              currenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFFF6B767B),
                ),
                title: Text("Home",
                    style: TextStyle(
                      color: Color(0xFFF6B767B),
                    ))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                  color: Color(0xFFF6B767B),
                ),
                title: Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xFFF6B767B),
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.recent_actors,
                  color: Color(0xFFF6B767B),
                ),
                title: Text(
                  "Favorite Categories",
                  style: TextStyle(
                    color: Color(0xFFF6B767B),
                  ),
                )),
          ]),
      body: _childs[currenIndex],
    );
  }
}
