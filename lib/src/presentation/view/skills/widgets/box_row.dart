import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/presentation/riverpods/hover_controller.dart';

import '../../../../config/responsive/responsive.dart';

class SkillsRow extends StatelessWidget {
  final String title;
  final String iconPath;
  const SkillsRow({
    Key? key,
    required this.iconPath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          height: MyResponsive.isMobile(context) ? 30 : 50,
          width: MyResponsive.isMobile(context) ? 30 : 50,
        ),
        const SizedBox(width: 5),
        Consumer(
          builder: (context, ref, child) {
            ref.watch(hoverProvider);
            return Flexible(
              child: Text(
                title,
                style: GoogleFonts.vesperLibre(
                  color:ref.read(hoverProvider.notifier).isHover ? Colors.black : Colors.white,
                  fontSize: MyResponsive.isMobile(context) ? 20 : 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          }
        ),
      ],
    );
  }
}
