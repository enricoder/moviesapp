
import 'package:flutter/material.dart';
import 'package:moviesapp/constants.dart';

class DetailMovieScreen extends StatelessWidget {
  const DetailMovieScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return  Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: Column(
          children: [
            Container(
              height: screenHeight*0.7,
              width: screenHeight,
              child:Image.asset('assets/movie-posters/vientos.png'),
            ),
            const SizedBox(height: 20.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               const Icon(Icons.add, color: Colors.white, size:32.0),
               Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Constants.kPinkColor,
                    Constants.kGreenColor,
                  ],
                ),
          ),
          child: RawMaterialButton(
                onPressed: () {},
                shape: const CircleBorder(),
                fillColor: const Color(0xff404c57),
                child: const Icon(Icons.play_arrow, color: Colors.white, size:32.0)
          ),
        ),
                       const Icon(Icons.share, color: Colors.white, size:32.0),

             ],
           ),
        const SizedBox(height: 20.0),
        
        Flexible(
          child: Container(
            child:  Text(
                      'Nina es una mujer que se reencuentra con su abuelo Fausto, tras quince años sin verse. Pronto, descubre que él está obsesionado con la idea de que hay un tesoro escondido en algún lugar. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Constants.kWhiteColor.withOpacity(0.75),
                        fontSize: screenHeight <= 667 ? 12 : 19,
                      ),
                    ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
                Icon(Icons.star_rate, color: Colors.yellow, size:32.0),
                Icon(Icons.star_rate, color: Colors.yellow, size:32.0),
                Icon(Icons.star_rate, color: Colors.yellow, size:32.0),
                Icon(Icons.star_rate, color: Colors.yellow, size:32.0),
                Icon(Icons.star_rate_outlined, color: Colors.yellow, size:32.0),

        ],)
       
          ],
      ),
    );
  }
}