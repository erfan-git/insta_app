import 'package:flutter/material.dart';
import 'package:insta_app/pages/favorite_page.dart';
import 'package:insta_app/pages/home_page.dart';
import 'package:insta_app/pages/plus_page.dart';
import 'package:insta_app/pages/profile_page.dart';
import 'package:insta_app/pages/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentPageName = 'home';

  final Map<String, Widget> children = <String, Widget>{
    'home': HomePage(),
    'favorite': FavoritePage(),
    'plus': PlusPage(),
    'profile': ProfilePage(),
    'search': SearchPage(),
  };

  final appBar = AppBar(
    backgroundColor: Color(0xfff8f0f8),
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 40.0,
      child: Image.asset("assets/images/instagram_text.png"),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: appBar,
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.black),
              onPressed: () {
                changePage('home');
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {
                changePage('search');
              },
            ),
            IconButton(
              icon: Icon(Icons.add_box, color: Colors.black),
              onPressed: () {
                changePage('plus');
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.black),
              onPressed: () {
                changePage('favorite');
              },
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.black),
              onPressed: () {
                changePage('profile');
              },
            ),
          ],
        ),
      ),
      body: children[currentPageName],
    );

  }

  void changePage(String s) {
    setState(() {
      currentPageName = s;
    });
  }
}
