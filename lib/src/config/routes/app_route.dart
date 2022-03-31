import 'package:flutter/widgets.dart';
import 'package:portfolio/src/presentation/view/home/home_page.dart';
import 'package:portfolio/src/presentation/view/skills/skills_page.dart';

import '../../presentation/view/about/about_page.dart';

class AppRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
     if (settings.name == '/') {
      return PageRouteBuilder(
        pageBuilder: (context,_,__) => const HomePage(),
        settings: settings,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, child) {
          return SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
                    .animate(animation),
            child: child,
          );
        },
      );
    }
     if (settings.name == '/skills') {
      return PageRouteBuilder(
        pageBuilder: (context,_,__) => const SkillsPage(),
        settings: settings,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, child) {
          return SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                    .animate(animation),
            child: child,
          );
        },
      );
    }
    if (settings.name == '/about') {
      return PageRouteBuilder(
        pageBuilder: (context,_,__) => const AboutPage(),
        settings: settings,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, child) {
          return SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
                    .animate(animation),
            child: child,
          );
        },
      );
    }
    return null;
  }

}
