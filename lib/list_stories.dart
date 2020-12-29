import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'استوری ها',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text('مشاهده همه', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            // moshakhas kardan mogheeat roye ham gharar giri
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Container(
                width: 40.0,
                height: 40.0,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.codemate.com/wp-content/uploads/2016/02/flutter-logo-round.png"),
                  ),
                ),
              ),
              index == 0
                  ? Positioned(
                      right: 3.0,
                      bottom: 0.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                    )
                  : Container()
            ],
          );
        },
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [topText, stories],
      ),
    );
  }
}
