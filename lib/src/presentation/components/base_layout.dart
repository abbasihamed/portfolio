import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/src/core/constants/app_url.dart';
import 'package:portfolio/src/presentation/riverpods/url_launcher_controller.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const BaseLayout({
    Key? key,
    required this.child,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          padding: padding ?? const EdgeInsets.all(24),
          child: child,
        ),
        floatingActionButton: SingleChildScrollView(
          child: Consumer(
            builder: (context, ref, child) {
              ref.watch(launchProvider);
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      ref.read(launchProvider.notifier).launchURL(githubUrl);
                    },
                    child: SvgPicture.asset('assets/icons/github.svg',
                        height: 30, width: 30),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      ref.read(launchProvider.notifier).launchURL(linkeidnUrl);
                    },
                    child: SvgPicture.asset('assets/icons/linkedin.svg',
                        height: 30, width: 30),
                  ),
                  child!,
                ],
              );
            },
            child: Container(
              width: 3,
              height: 90,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
