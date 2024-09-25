import 'package:flutter/material.dart';
import '../components.dart';
import '../constants/constant.dart';
import 'dart:async';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController mailregisterController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  bool showpassword = true;
  bool confirmpassword = true;
  Timer? verificationTimer; // Declare the Timer
  bool canResendEmail = true; // Track if the resend button can be pressed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tinyvault_bg, // Match background color
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double containerWidth = constraints.maxWidth > 600
                    ? constraints.maxWidth * 0.5
                    : constraints.maxWidth * 0.9;
                double containerHeight = constraints.maxHeight > 800
                    ? constraints.maxHeight * 0.667
                    : constraints.maxHeight * 0.8;

                return Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Colors.white, // Match container color
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo
                      Image.asset(
                        'logo.png',
                        height: 60,
                        errorBuilder: (context, error, stackTrace) {
                          print('Error loading image: $error');
                          return Icon(Icons.error);
                        },
                      ),
                      SizedBox(height: 20.0),
                      // Welcome Text
                      Text(
                        'Sign Up now',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Join us and start chatting!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Email TextField
                      CustomTextField(
                        controller: mailregisterController,
                        hintText: 'Enter Your Email ID',
                      ),
                      SizedBox(height: 20.0),
                      // Password TextField
                      CustomTextField(
                        controller: passController,
                        hintText: 'Enter Password',
                        obscureText: showpassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showpassword = !showpassword;
                            });
                          },
                          icon: Icon(
                            showpassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Confirm Password TextField
                      CustomTextField(
                        controller: confirmpassController,
                        hintText: 'Confirm Password',
                        obscureText: confirmpassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              confirmpassword = !confirmpassword;
                            });
                          },
                          icon: Icon(
                            confirmpassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Submit Button
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            // submit_register();
                          },
                          child: Text('Submit'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: tinyvault_purple,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            textStyle: TextStyle(fontSize: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Login Link
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/login',
                            (_) => false,
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Already have an account? ",
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
