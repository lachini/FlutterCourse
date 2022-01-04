// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',
            style: Theme.of(context).appBarTheme.textTheme!.headline4),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 50),
              child: const Text(
                'Home',
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.blue)),
              color: Colors.white,
              textColor: Colors.blue,
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.pushNamed(context, '/users');
              },
              child: const Text(
                "Users",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.blue)),
              color: Colors.white,
              textColor: Colors.blue,
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/profile',
                  arguments:
                      "Second Page", //This is really importan. Here you should pass every parameter as arguments
                );
              },
              child: const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
