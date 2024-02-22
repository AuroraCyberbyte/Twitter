import 'package:cosmos/cosmos.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twitter/firebase_options.dart';
import 'package:twitter/login.dart';
import 'package:twitter/home.dart';
import 'package:twitter/profile.dart';
import 'package:twitter/signup.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/home": (context) => const HomePage(),
        "/login": (context) => const Login(),
        "/signup": (context) => const SignUp(),
        "/profile": (context) => const Profile(),
      },
    );
  }
}
