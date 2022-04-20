import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:moviesapp/screens/onboarding_screen.dart';
import 'package:moviesapp/screens/detail_movie_screen.dart';
import 'package:moviesapp/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qosqoflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.handlee().fontFamily,
      ),
      initialRoute: 'onboarding',
      routes: {
        'onboarding' : (BuildContext context)=> const OnboardingScreen(),
        'home_screen' : (BuildContext context)=> const HomeScreen(),
        'detail_movie' : (BuildContext context)=> const DetailMovieScreen(),

      },
    );
  }
}
//openSans().fontFamily,