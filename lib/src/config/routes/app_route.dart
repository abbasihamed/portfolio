import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/src/presentation/view/home/home_page.dart';
import 'package:portfolio/src/presentation/view/skills/skills_page.dart';

import '../../presentation/view/about/about_page.dart';

class FluroRoute {
  static final router = FluroRouter();

  static Handler homePage = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const HomePage();
  });

  static Handler aboutPage = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const AboutPage();
  });

  static Handler skillsPage = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const SkillsPage();
  });

  static void defineRoter() {
    router.define('/', handler: homePage);
    router.define('/about',
        handler: aboutPage, transitionType: TransitionType.inFromLeft);
    router.define('/skills',
        handler: skillsPage, transitionType: TransitionType.inFromRight);
  }
}
