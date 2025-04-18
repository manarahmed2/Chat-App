import 'package:flutter/material.dart';
import 'package:chat_app/core/utils.dart';
import 'package:chat_app/features/auth/presentation/views/sign_up.dart';

import 'package:chat_app/core/textfield_widget.dart';

import '../../../../../core/Button_widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFF2B475E),
              backgroundImage: AssetImage("assets/images/scholar.png"),
              radius: 50,
            ),
            const SizedBox(height: 12),
            const Text(
              "Scholar Chat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const TextfieldWidget(hintText: 'Email'),
            const TextfieldWidget(hintText: 'Password'),
            const SizedBox(height: 24),
            ButtonWidget(
              text: 'Sign In',
              onTap: () {
                // تنفيذ عملية تسجيل الدخول
              },
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignUpView.id);
              },
              child: const Text(
                "Didn’t have an account? Sign up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
