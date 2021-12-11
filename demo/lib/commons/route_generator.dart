import 'package:flutter/material.dart';
import 'package:demo/views/home.dart';
import 'package:demo/views/users.dart';
import 'package:demo/views/user_profile.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  title: '',
                ));
      case '/users':
        return MaterialPageRoute(builder: (_) => UsersPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
