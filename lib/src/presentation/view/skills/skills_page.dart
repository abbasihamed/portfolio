import 'package:flutter/material.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/view/skills/skills_tablet_screen.dart';
import 'package:portfolio/src/presentation/view/skills/skills_web_screen.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyResponsive(
      desktop: SkillsWebScreen(),
      tablet: SkillsTabletScreen(),
      mobile: SkillsTabletScreen(),
    );
  }
}