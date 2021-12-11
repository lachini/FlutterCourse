import 'package:demo/views/home.dart';
import 'package:flutter/material.dart';

import 'commons/route_generator.dart';
import 'commons/themes.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
        path: 'assets/langs',
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: primaryTheme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        home: HomePage(title: "Home"));
  }
}
