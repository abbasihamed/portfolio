import 'package:flutter/material.dart';
import 'package:portfolio/src/config/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamed Abbasi',
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: '/',
    );
  }
}