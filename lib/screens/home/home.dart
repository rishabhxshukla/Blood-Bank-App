import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Column(
            children: [

              /* MAIN CONTAINER 1 */
              Container(
                color: const Color(0xffF44545),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3,
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [

                    /* HAMBURGER MENU */
                    Row(
                      children: const [
                        Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.white
                        )
                      ]
                    ),
                    
                    const Padding(padding: EdgeInsets.only(bottom: 30)),

                    /* HELLO MESSAGE */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Hello Rishabh",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          )
                        )
                      ]
                    )

                  ]
                )
              ),


              /* MAIN CONTAINER 2 */
              Container(
                color: Colors.white,
              )
            ]
          )
        )
      )
    );
  }
}
