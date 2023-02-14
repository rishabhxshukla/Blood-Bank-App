import 'package:flutter/material.dart';
import 'package:app/screens/login/login_verification.dart';

class LoginEnter extends StatelessWidget
{
  const LoginEnter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,

          child: InkWell(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                /* TEXT */
                const Text("Login with your mobile number",
                  style: TextStyle(
                    fontSize: 20
                  )
                ),


                /* USER INPUT */
                Container(
                  width: 280,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8),
                    borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),

                  child: const TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    style: TextStyle(
                      fontSize: 20
                    ),
                    decoration: InputDecoration(
                      prefix: Text("+91"),
                      hintText: "Mobile number",
                      border: InputBorder.none,
                      counterText: ""
                    )
                  )
                ),


                /* OTP BUTTON */
                Container(
                  margin: const EdgeInsets.only(top: 60),

                  child: const ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                      padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(40, 15, 40, 15))
                    ),

                    onPressed: null,

                    child: Text("GET OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      )
                    )
                  )
                )
              ]
            ),

            /* Function to change screen on tap */
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginVerification())
              )
            }
          )
        )
      )
    );
  }
}