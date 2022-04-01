import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/icons/github.svg',
                  height: 30, width: 30),
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
