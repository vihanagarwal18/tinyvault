import 'package:flutter/material.dart';
import 'components.dart';
import 'constants/constant.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showpassword = true;
  @override
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
                      // Logo
                      // Image.asset(
                      //   'assets/logo.png',
                      //   height: 50,
                      // ),
                      SizedBox(height: 20.0),
                      // Welcome Text
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Glad to see you again 👋\nLogin to your account below',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Google Sign-In Button
                      // ElevatedButton.icon(
                      //   onPressed: () {
                      //     // Implement Google Sign-In
                      //   },
                      //   icon: Icon(Icons.login, color: Colors.red),
                      //   label: Text('Continue with Google'),
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: Colors.white,
                      //     foregroundColor: Colors.black,
                      //     side: BorderSide(color: Colors.grey.shade300),
                      //     padding: EdgeInsets.symmetric(vertical: 15),
                      //     textStyle: TextStyle(fontSize: 16),
                      //   ),
                      // ),
                      // SizedBox(height: 20.0),
                      // Email TextField
                      CustomTextField(
                        controller: mailController,
                        hintText: 'enter email...',
                      ),
                      SizedBox(height: 20.0),
                      // Password TextField
                      CustomTextField(
                        controller: passwordController,
                        hintText: 'enter password...',
                        obscureText: showpassword,
                        suffixIcon: IconButton(
                          icon: Icon(
                            color: Colors.grey.shade500,
                            showpassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              showpassword = !showpassword;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Login Button
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            // submit_login();
                          },
                          child: Text('Login'),
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
                      // Registration Link
                      TextButton(
                        onPressed: () {
                          // Navigator.pushNamedAndRemoveUntil(
                          //   context,
                          //   '/RegisterRoute',
                          //       (_) => false,
                          // );
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
