// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

Container userItem(BuildContext context, user) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
    height: height / 6,
    margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
    child: Card(
      child: GestureDetector(
          onTap: () {
            print("Cell is clicked.");
          },
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0, left: 0, right: 0),
                child: Image.asset(
                  'assets/images/user.jpg',
                  height: height / 6,
                  width: width / 3,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 15),
                    width: width * 2 / 3 - 55,
                    height: (height / 6 - 40) / 2,
                    child: Text(
                      user,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 5),
                    height: (height / 6 - 40) / 2,
                    width: width * 2 / 3 - 55,
                    child: Text(
                      "No 2, Hill St. Kandy.",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ],
          )),
    ),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 5.0,
      ),
    ]),
  );
}
