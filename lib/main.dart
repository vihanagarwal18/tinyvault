import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loginpage.dart';
import 'authgate.dart';
import 'pages/register.dart';
import 'pages/forgot_password.dart';
// ignore_for_file: prefer_const_constructors

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: "/login",
  routes: {
    "/home" : (context) =>  const HomePage(),
    "/auth" :(context) => const Authgate(),
    "/login" :(context) =>  const Loginpage(),
    '/RegisterRoute' :(context) => const RegisterPage(),
    '/ForgotPassword' :(context) => const ForgotPassword(),
  },
));