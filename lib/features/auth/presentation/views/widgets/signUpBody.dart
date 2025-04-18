import 'package:flutter/material.dart';


import '../../../../../core/Button_widget.dart';
import '../../../../../core/textfield_widget.dart';


class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
                  "Sign Up",
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
              text: 'Sign Up',
              onTap: () {
                // هنا تقدر تضيف كود التسجيل
              },
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Already have an account? Sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
