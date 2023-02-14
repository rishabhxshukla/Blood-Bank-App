import 'package:flutter/material.dart';
import 'package:app/screens/sliders/slider2.dart';

class Slider1 extends StatelessWidget
{
  const Slider1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffFA4848),
          width: MediaQuery.of(context).size.width,

          child: InkWell(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                /* Image */
                Image.asset("assets/images/health-check.png"),

                /* Text */
                Container(
                  padding: const EdgeInsets.only(left: 60, right: 60),

                  child: const Text("To be a responsible donor, you must get a check-up.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  )
                )
              ]
            ),

            /* Function to change screen on tap */
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Slider2())
              )
            }
          )
        )
      )
    );
  }
}