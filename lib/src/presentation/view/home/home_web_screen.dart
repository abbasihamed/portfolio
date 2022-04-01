import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/presentation/components/base_layout.dart';
import 'package:portfolio/src/presentation/riverpods/opacity_anim_controller.dart';

import 'widgets/side_button.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return BaseLayout(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                SideButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  title: 'About',
                ),
                const SizedBox(width: 30),
                SizedBox(
                  width: _size.width * 0.59,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, I\'m Hamed',
                        style: GoogleFonts.vesperLibre(
                          color: Colors.white,
                          fontSize: 100,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "I'm junior mobile developers",
                        style: GoogleFonts.vesperLibre(
                          color: Colors.white54,
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: _size.height,
                  width: _size.width * 0.28,
                  child: Consumer(builder: (context, ref, child) {
                    ref.watch(opacityAnimProvider);
                    ref.watch(opacityAnimProvider.notifier).animToggel();
                    return AnimatedOpacity(
                      duration: const Duration(seconds: 1),
                      opacity: ref.watch(opacityAnimProvider.notifier).isAnim
                          ? 1
                          : 0,
                      child: Image.asset(
                        'assets/images/profile-img.png',
                        fit: BoxFit.contain,
                      ),
                    );
                  }),
                ),
                SideButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/skills');
                  },
                  title: 'Skills',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
