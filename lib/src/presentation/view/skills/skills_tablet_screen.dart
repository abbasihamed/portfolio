import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/view/skills/widgets/box_row.dart';

class SkillsTabletScreen extends StatelessWidget {
  const SkillsTabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Center(
            child: SizedBox(
              width: 700,
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          child: Text(
                            'SKILLS',
                            style: GoogleFonts.vesperLibre(
                              color: Colors.white54,
                              fontWeight: FontWeight.w900,
                              fontSize: 82,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 80,
                          child: Container(
                            height: 300,
                            width: MyResponsive.isMobile(context)
                                ? _size.width * 0.8
                                : 600,
                            padding: const EdgeInsets.only(
                                left: 12, top: 20, right: 12),
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Column(
                              children: const [
                                SkillsRow(
                                    iconPath: 'assets/icons/double-tick.png',
                                    title: 'Dart'),
                                SkillsRow(
                                    iconPath: 'assets/icons/double-tick.png',
                                    title: 'Flutter'),
                                SkillsRow(
                                    iconPath: 'assets/icons/double-tick.png',
                                    title: 'Git'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          child: Text(
                            'FAMILIAR',
                            style: GoogleFonts.vesperLibre(
                              color: Colors.white54,
                              fontWeight: FontWeight.w900,
                              fontSize: MyResponsive.isMobile(context) ? 64 : 80,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: MyResponsive.isMobile(context) ? 60 : 80,
                          child: Container(
                            height: 300,
                            width: MyResponsive.isMobile(context)
                                ? _size.width * 0.8
                                : 600,
                            padding: const EdgeInsets.only(
                                left: 12, top: 20, right: 12),
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Column(
                              children: const [
                                SkillsRow(
                                    iconPath: 'assets/icons/tick.png',
                                    title: 'Python'),
                                SkillsRow(
                                    iconPath: 'assets/icons/tick.png',
                                    title: 'Java Script'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/icons/github.svg', height: 30, width: 30),
              const SizedBox(height: 10),
              SvgPicture.asset('assets/icons/linkedin.svg',
                  height: 30, width: 30),
              Container(
                width: 3,
                height: 90,
                color: Colors.white,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}

