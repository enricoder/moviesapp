import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moviesapp/components/custom_outline.dart';
import 'package:moviesapp/constants.dart';
import 'package:moviesapp/screens/home_screen.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 52, 16, 16),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 251, 86, 9),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.07,
                  ),
                  Container(
                    height: screenHeight*0.4,
                    child: Image.asset('assets/canchita.png'),
                  ),
                  SizedBox(
                    height: screenHeight * 0.09,
                  ),
                  Text(
                    'QOSQOFLIX',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.kWhiteColor.withOpacity(0.85),
                      fontSize: screenHeight <= 667 ? 18 : 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Text(
                    'Disfruta en linea\nde tus peliculas y series favoritas ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.kWhiteColor.withOpacity(0.75),
                      fontSize: screenHeight <= 667 ? 12 : 22,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  CustomOutline(
                    strokeWidth: 3,
                    radius: 20,
                    padding: const EdgeInsets.all(3),
                    width: 160,
                    height: 38,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Constants.kPinkColor, Constants.kGreenColor],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constants.kPinkColor.withOpacity(0.5),
                            Constants.kGreenColor.withOpacity(0.5)
                          ],
                        ),
                      ),
                      child: 
                      TextButton(
                        style: ButtonStyle(
                           foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                           ),
                        onPressed: ()  { 

                          final route = MaterialPageRoute(builder: (context)=> const HomeScreen(),);
                          Navigator.push(context, route);
                        },
                         child: const Text('SALTAR'),
)
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          height: 7,
                          width: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 0
                                ? Constants.kGreenColor
                                : Constants.kWhiteColor.withOpacity(0.2),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
