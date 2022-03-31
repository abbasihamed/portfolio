import 'package:flutter/material.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/view/home/home_tablet_screen.dart';
import 'package:portfolio/src/presentation/view/home/home_web_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyResponsive(
      desktop: HomeWebScreen(),
      tablet: HomeTabletScreen(),
      mobile: HomeTabletScreen(),
    );
  }
}
