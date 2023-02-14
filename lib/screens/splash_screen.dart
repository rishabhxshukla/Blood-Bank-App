import 'package:flutter/material.dart';
import 'package:app/screens/sliders/slider1.dart';

class SplashScreen extends StatelessWidget
{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: InkWell(

          child: Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: 250,
              height: 250,
              fit: BoxFit.contain
            )
          ),

          /* Function to change screen on tap */
          onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Slider1())
              )
            }
        )
      )
    );
  }
}