import 'package:flutter/material.dart';
import '../components.dart';
import '../constants/constant.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController mailregisterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tinyvault_bg,
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
                    color: Colors.white,
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
                      Image.asset(
                        'logo.png',
                        height: 60,
                        errorBuilder: (context, error, stackTrace) {
                          print('Error loading image: $error');
                          return Icon(Icons.error);
                        },
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Enter your email to reset your password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      CustomTextField(
                        controller: mailregisterController,
                        hintText: 'Enter Your Email ID',
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          child: Text('Reset Password'),
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
                            text: "Remember your password? ",
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/RegisterRoute',
                                (_) => false,
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Don't have an account? ",
                            children: [
                              TextSpan(
                                text: 'Sign up for Free',
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
