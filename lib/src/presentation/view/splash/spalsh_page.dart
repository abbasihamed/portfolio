import 'package:flutter/material.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/view/splash/splash_web_screen.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyResponsive(
      desktop: SplashWebScreen(),
      tablet: SplashWebScreen(),
      mobile: SplashWebScreen(),
    );
  }
}