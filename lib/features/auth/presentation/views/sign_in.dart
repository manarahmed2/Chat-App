import 'package:chat_app/features/auth/presentation/views/widgets/signInBody.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/utils.dart';


class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SignInBody(),
    );
  }
}
