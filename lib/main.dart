import 'package:flutter/material.dart';
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
      title: 'Find barbershop nearby',
      subTitle: 'A nice haircut makes everything look good around.',
      imageUrl: 'images/s1.webp',
    ),
    Introduction(
      title: 'Attractive promotions',
      subTitle: 'Friends come and go, but a good hairstylist is forever.',
      imageUrl: 'images/s2.webp',
    ),
    Introduction(
      title: 'The Professionals',
      subTitle: 'Everything feels better after a haircut!',
      imageUrl: 'images/s3.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: const Color(0xFFFFAA00),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 18,
      ),
    );
  }
}