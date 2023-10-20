import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/Components/button.dart';
import 'package:tugas1/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor ,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

          //shop name
          Text("CAKE", 
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 28,
            color: Colors.white,
          ),
          ),

          const SizedBox(height: 25),
      
          //icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/Cake 2.png'),
          ),
      
          //tittle
          Text("Where Every Bite is a Sweet Delight",
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 44,
            color: Colors.white,
          ),
          ),

          const SizedBox(height: 10),
      
          //subtitle
          Text("Celebrating Life's Sweetest Moments with Cakes that Capture the Essence of Joy",
          style:TextStyle (color: Colors.grey[300],
          height: 2
          ),
          ),

          const SizedBox(height: 25),
      
          //get started button
          MyButton(text: "Get Started",
          onTap:() {
            // go to menu page
            Navigator.pushNamed(context, '/menupage');
          },
          )
        ]),
      ),
    );
  }
}