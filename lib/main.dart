import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:skip_screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: "Scissor's",
      titleTextStyle:
          GoogleFonts.shantellSans(fontSize: 45, fontWeight: FontWeight.bold),
      subTitle: 'Make You Feel Happy.!',
      subTitleTextStyle:
          GoogleFonts.gloriaHallelujah(fontSize: 30, fontWeight: FontWeight.bold),
      imageUrl: 'images/Scissors_logo-removebg-preview.png',
      imageHeight: 200,
      imageWidth:200 ,
    ),
    Introduction(
      title: 'Find barbershop nearby',
      titleTextStyle:
      GoogleFonts.actor( fontWeight: FontWeight.bold , fontSize: 25 , color: Colors.white),
      subTitle: 'A nice haircut makes everything look good around.',
      subTitleTextStyle:
      GoogleFonts.openSans(fontWeight: FontWeight.bold , fontSize: 20),
      imageUrl: 'images/s1.webp',
    ),
    Introduction(
      title: 'Attractive promotions',
      titleTextStyle:
      GoogleFonts.actor(fontWeight: FontWeight.bold , fontSize: 25 , color: Colors.white),
      subTitle: 'Friends come and go, but a good hairstylist is forever.',
      subTitleTextStyle:
      GoogleFonts.openSans(fontWeight: FontWeight.bold , fontSize: 20),
      imageUrl: 'images/s2.webp',
    ),
    Introduction(
      title: 'The Professionals',
      titleTextStyle:
      GoogleFonts.actor(fontWeight: FontWeight.bold , fontSize: 25 , color: Colors.white),
      subTitle: 'Everything feels better after a haircut!',
      subTitleTextStyle:
      GoogleFonts.openSans(fontWeight: FontWeight.bold , fontSize: 20),
      imageUrl: 'images/s3.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFF06292),
      foregroundColor: const Color(0xFF000000),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}