import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWebScreen extends StatelessWidget {
  const AboutWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height:_size.height ,
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
                      top:100,
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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
              child: Image.asset('assets/images/spaceman.png', height: 400),
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
