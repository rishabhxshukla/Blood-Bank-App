import 'package:flutter/material.dart';
import 'package:app/screens/sliders/slider3.dart';

class Slider2 extends StatelessWidget
{
  const Slider2({Key? key}) : super(key: key);

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
                Image.asset("assets/images/puzzle.png"),

                /* Text */
                Container(
                  padding: const EdgeInsets.only(left: 40, right: 40),

                  child: const Text("Your blood type should be compatible with the receiver’s type.",
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
                MaterialPageRoute(builder: (context) => const Slider3())
              )
            }
          )
        )
      )
    );
  }
}
