import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/box_row.dart';

class SkillsWebScreen extends StatelessWidget {
  const SkillsWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                // color: Colors.amber,
                height: _size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 50,
                      child: Text(
                        'SKILLS',
                        style: GoogleFonts.vesperLibre(
                          color: Colors.white54,
                          fontWeight: FontWeight.w900,
                          fontSize: 150,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 50,
                      top: 130,
                      child: Container(
                        height: 500,
                        width: 600,
                        padding:
                            const EdgeInsets.only(left: 12, top: 20, right: 12),
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
            ),
            Expanded(
              child: SizedBox(
                // color: Colors.amber,
                height: _size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 10,
                      child: Text(
                        'FAMILIAR',
                        style: GoogleFonts.vesperLibre(
                          color: Colors.white54,
                          fontWeight: FontWeight.w900,
                          fontSize: 150,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 130,
                      child: Container(
                        height: 500,
                        width: 600,
                        padding:
                            const EdgeInsets.only(left: 12, top: 20, right: 12),
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
            ),
          ],
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
    );
  }
}
