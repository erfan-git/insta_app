import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_app/list_stories.dart';

class HomePage extends StatelessWidget {
  final instaPost = Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.codemate.com/wp-content/uploads/2016/02/flutter-logo-round.png"))),
                ),
                Text(
                  "حساب کاربری",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: null,
            ),
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
            child: Image.network(
              "https://blog.codemagic.io/uploads/CM_Android-dev-Flutter_FB.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("pressed!");
                  },
                  child: Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed!");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(
                      FontAwesomeIcons.comment,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed!");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(
                      FontAwesomeIcons.paperPlane,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.bookmark, color: Colors.black),
              onPressed: null,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "محمد و علی و 50.000 نفر دیگراین مطلب را لایک کرده اند",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.only(left: 5.0, right: 12.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.codemate.com/wp-content/uploads/2016/02/flutter-logo-round.png"),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "اضافه کردن یک نظر . . .",
                  hintStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "1 روز قبل",
          style: TextStyle(color: Colors.grey),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                height: deviceSize.height * 0.15,
                child: ListStories(),
              )
            : instaPost;
      },
    );
  }
}
