import 'package:flutter/material.dart';

class SignupField extends StatelessWidget
{
  final String text;

  const SignupField({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /* INPUT LABEL */
        Text(text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white
          )
        ),

        /* INPUT FIELD */
        const TextField(
          style: TextStyle(
            fontSize: 18,
            color: Colors.white
          )
        ),

        const Padding(padding: EdgeInsets.only(bottom: 30))

      ]
    );
  }
}