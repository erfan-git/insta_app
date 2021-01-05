import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 8),
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
                          index < 5
                              ? "https://cdn.cp.adobe.io/content/2/rendition/628da3f2-bea4-4912-978f-bcf4153ed98b/artwork/9c15a005-605c-44d8-93e7-9d96daf273d7/version/0/format/jpg/dimension/width/size/300"
                              : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqkUYrITWyI8OhPNDHoCDUjGjhg8w10_HRqg&usqp=CAU",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      accountName(index),
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16.0),
                    ),
                  ),
                  Text(
                    'پست شما را لایک کرده است',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 1),
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZUX7zo1yYFaBeOYIcOfcgwnULvpM7YqzXxA&usqp=CAU',
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String accountName(int i) => i > 4 ? "علی رحمتی" : "هدیه ملکی";
}
