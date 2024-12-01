import 'package:chat_app/widgets/Button_widget.dart';
import 'package:chat_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xFF2B475E),
                backgroundImage: AssetImage("assets/images/scholar.png"),
                radius: 50,
              ),
              const Text(
                "Scholar Chat",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 24),
                  ),
                ),
              ),
              const TextfieldWidget(
                hintText: 'Email',
              ),
              const TextfieldWidget(
                hintText: 'Password',
              ),
              const SizedBox(
                height: 24,
              ),
              ButtonWidget(
                text: 'Sign in',
              ),
              const Text(
                "didn’t have an account? Sign up",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
