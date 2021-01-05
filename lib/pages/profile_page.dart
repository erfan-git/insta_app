import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  var profile = Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        height: 120.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                // moshakhas kardan mogheeat roye ham gharar giri
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
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
                  Positioned(
                    right: 3.0,
                    bottom: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 15.0,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,36.0, 16.0, 16.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '6',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'پست ها',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text(
                          '12K',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'فالوور ها',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'فالووینگ ها',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 140,
        padding: EdgeInsets.fromLTRB(8,0,8,8),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'حساب کاربری',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'فلاتر سال 2017 معرفی شد.\nفلاتر یک فریم ورک است که دو خروجی برای اندروید و ios تولید می کند.\nفلاتر را گوگل توسعه می دهد.',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                // maxLines: 3,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Container(
                height: 30.0,
                width: 470,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                alignment: Alignment.center,
                child: Text(
                  'ویرایش پروفایل',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 10,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.grey[400],style: BorderStyle.solid),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return index == 0 ? profile : Container();
      },
    );
  }
}
