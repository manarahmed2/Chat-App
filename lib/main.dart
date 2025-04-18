import 'package:chat_app/firebase_options.dart';

import 'package:chat_app/features/auth/presentation/views/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'features/auth/presentation/views/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'SignInView': (context) => const SignInView(),
        SignUpView.id: (context) => const SignUpView(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'SignInView',
    );
  }
}
