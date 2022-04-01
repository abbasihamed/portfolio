import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/config/responsive/responsive.dart';
import 'package:portfolio/src/presentation/components/base_layout.dart';

import 'widgets/side_button.dart';

class HomeTabletScreen extends StatelessWidget {
  const HomeTabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return BaseLayout(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SideButton(
                onTap: () {},
                title: 'About',
              ),
              Image.asset('assets/images/profile-img.png',
                  height: MyResponsive.isMobile(context)
                      ? _size.height * 0.35
                      : _size.height * 0.45),
              SideButton(
                onTap: () {},
                title: 'Skills',
              ),
            ],
          ),
          Text(
            'Hi, I\'m Hamed',
            style: GoogleFonts.vesperLibre(
              color: Colors.white,
              fontSize: MyResponsive.isMobile(context) ? 54 : 90,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "I'm junior mobile developers",
            style: GoogleFonts.vesperLibre(
              color: Colors.white54,
              fontSize: MyResponsive.isMobile(context) ? 28 : 42,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
