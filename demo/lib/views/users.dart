import 'package:flutter/material.dart';

import 'cards/user_card.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<String> users = [
    "Kamal Perera",
    "Nimal Dissanayaka",
    "Saman De Silva",
    "Sunil Mendis",
    "Shehan Gunawardana",
    "Sudath Nishantha"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: ListView.separated(
            itemBuilder: (BuildContext context, index) {
              // print(stories[index]);
              return userItem(context, users[index]);
            },
            separatorBuilder: (BuildContext context, index) {
              return const Divider(
                height: 2.0,
                color: Colors.transparent,
              );
            },
            itemCount: users.length));
  }
}
