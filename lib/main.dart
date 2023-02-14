import 'package:flutter/material.dart';
import 'package:app/screens/splash_screen.dart';
import 'package:app/screens/sliders/slider1.dart';
import 'package:app/screens/sliders/slider2.dart';
import 'package:app/screens/sliders/slider3.dart';

import 'package:app/screens/login/login_enter.dart';
import 'package:app/screens/login/login_verification.dart';
import 'package:app/screens/login/signup.dart';

import 'package:app/screens/home/home.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Blood Bank App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),

      initialRoute: "/home",
      routes: {
        "/" : (context) => const SplashScreen(),
        "/slider1" : (context) => const Slider1(),
        "/slider2" : (context) => const Slider2(),
        "/slider3" : (context) => const Slider3(),

        "/login-enter" : (context) => const LoginEnter(),
        "/login-verification" : (context) => const LoginVerification(),
        "/signup" : (context) => const SignUp(),

        "/home" : (context) => const Home()
      }
    );
  }
}