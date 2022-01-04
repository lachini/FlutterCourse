// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

Widget appBar(title, context) {
  return AppBar(
    title:
        Text(title, style: Theme.of(context).appBarTheme.textTheme!.headline4),
  );
}
