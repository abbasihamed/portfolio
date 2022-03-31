import 'package:flutter/material.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/view/about/about_tablet_screen.dart';
import 'package:portfolio/src/presentation/view/about/about_web_screen.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyResponsive(
      desktop: AboutWebScreen(),
      tablet: AboutTabletScreen(),
      mobile: AboutTabletScreen(),
    );
  }
}
