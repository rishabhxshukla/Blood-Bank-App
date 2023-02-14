import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:app/screens/login/signup.dart';

class LoginVerification extends StatelessWidget
{
  const LoginVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    OtpFieldController otpController = OtpFieldController();

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,

          child: InkWell(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                /* 1st CONTAINER */
                Column(
                  children: const [
                    Text("OTP Verification",
                      style: TextStyle(
                        fontSize: 22
                      )
                    ),
                    Text("Enter the OTP sent to +91 9542983532",
                      style: TextStyle(
                        fontSize: 16
                      )
                    )
                  ]
                ),


                /* ENTER OTP */
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 50),

                  child: OTPTextField(
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width/1.5,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.underline,
                    outlineBorderRadius: 15,
                    style: const TextStyle(fontSize: 22),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    }
                    ),
                ),


                /* RESEND OTP */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: const [
                    Text("Didn’t receive an OTP? ",
                      style: TextStyle(
                        fontSize: 18
                      )
                    ),
                    Text("Resend OTP",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffFA4848)
                      )
                    )
                  ]
                ),


                /* VERIFY BUTTON */
                Container(
                  margin: const EdgeInsets.only(top: 60),

                  child: const ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                      padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(50, 15, 50, 15))
                    ),

                    onPressed: null,

                    child: Text("VERIFY",
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
                MaterialPageRoute(builder: (context) => const SignUp())
              )
            }
          )
        )
      )
    );
  }
}