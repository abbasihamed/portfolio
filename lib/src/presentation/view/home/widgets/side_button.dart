import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/responsive/responsive.dart';

class SideButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const SideButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Text(
          title,
          style: GoogleFonts.vesperLibre(
            color: Colors.white38,
            fontWeight: FontWeight.w400,
            fontSize: MyResponsive.isMobile(context) ? 18 : 28,
          ),
        ),
      ),
    );
  }
}
