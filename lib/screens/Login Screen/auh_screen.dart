import 'package:flutter/material.dart';

import '../landing_page.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.green.shade400,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: const Center(
                  child: Text(
                    'TrueFisheries',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Welcome back!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              const Text(
                'Login to Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Enter your email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 40,
                child: TextField(
                  cursorColor: Colors.green.shade400,
                  cursorWidth: 1.5,
                  decoration: const InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 8, left: 10),
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Enter your password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 40,
                child: TextField(
                  cursorColor: Colors.green.shade400,
                  cursorWidth: 1.5,
                  decoration: const InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.only(bottom: 8, left: 10),
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: const Text(
                  'Forgot password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Center(
                      child: SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LandingPage()));
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.5),
                      ),
                    ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
