import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/presentation/components/base_layout.dart';

class AboutWebScreen extends StatelessWidget {
  const AboutWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return BaseLayout(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              height: _size.height,
              child: Stack(
                children: [
                  Positioned(
                    left: 100,
                    top: 0,
                    child: Text(
                      'ABOUT',
                      style: GoogleFonts.vesperLibre(
                        color: Colors.white54,
                        fontWeight: FontWeight.w900,
                        fontSize: 150,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 70,
                    top: 100,
                    child: Container(
                      height: 500,
                      width: 600,
                      padding:
                          const EdgeInsets.only(left: 12, top: 20, right: 12),
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
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: _size.height,
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/spaceman.png', height: 500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
