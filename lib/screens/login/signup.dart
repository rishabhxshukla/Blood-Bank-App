import 'package:flutter/material.dart';
import 'package:app/widgets/signup_field.dart';

class SignUp extends StatelessWidget
{
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffFA4848),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: const [
                /* SIGN UP */
                Text("Sign Up",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  )
                ),
                Padding(padding: EdgeInsets.only(bottom: 25)),

                /* FULL NAME */
                SignupField(text: "Full Name"),

                /* DATE OF BIRTH */
                SignupField(text: "Date of Birth"),

                /* AGE */
                SignupField(text: "Age"),

                /* PREVAILING HEALTH CONDITIONS */
                SignupField(text: "Prevailing Health Conditions"),

                /* BLOOD GROUP */
                SignupField(text: "Blood Group"),

                /* REGISTER BUTTON */
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      padding: MaterialStatePropertyAll(EdgeInsets.all(18))
                    ),

                    onPressed: null,

                    child: Text("REGISTER FOR CHECKUP",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17
                      )
                    )
                  )
                )
              ]
            )
          )
        )
      )
    );
  }
}