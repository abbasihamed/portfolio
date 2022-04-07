import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/components/base_layout.dart';

class AboutTabletScreen extends StatelessWidget {
  const AboutTabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return BaseLayout(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 600,
              width: 700,
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'ABOUT',
                style: GoogleFonts.vesperLibre(
                  color: Colors.white54,
                  fontWeight: FontWeight.w900,
                  fontSize: MyResponsive.isMobile(context) ? 84 : 150,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: MyResponsive.isMobile(context) ? 30 : 0,
              child: Container(
                height: 500,
                width:
                    MyResponsive.isMobile(context) ? _size.width * 0.75 : 600,
                padding: const EdgeInsets.only(left: 12, top: 20, right: 12),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: Text(
                  """
I am a junior mobile programmer living in Tabriz.
I have a great interest in learning and teaching, and I even took steps to teach.
I have work experience in an advertising project in which I got acquainted with Docker and ci / cd.
Another work experience that I am still working on is related to banking and banking process programming. In this company, I gained a very good team work experience and gained enough familiarity with Jira.
""",
                  style: GoogleFonts.vesperLibre(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    wordSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
