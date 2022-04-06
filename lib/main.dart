import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/config/routes/app_route.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  /// To remove "#" from url
  setPathUrlStrategy();

  /// To set routes
  FluroRoute.defineRoter();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamed Abbasi',
      onGenerateRoute: FluroRoute.router.generator,
      initialRoute: '/',
    );
  }
}
