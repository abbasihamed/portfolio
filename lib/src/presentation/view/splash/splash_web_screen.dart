import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashWebScreen extends StatelessWidget {
  const SplashWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Text(
            'Loading...',
            style: GoogleFonts.vesperLibre(
              color: Colors.white,
              fontSize: 64,
            ),
          ),
        ),
      ),
    );
  }
}
