import 'package:app_finanzas_flutter/modules/auth/login.dart';
import 'package:app_finanzas_flutter/modules/auth/register.dart';
import 'package:app_finanzas_flutter/modules/auth/reset_password.dart';
import 'package:app_finanzas_flutter/modules/auth/send_code.dart';
import 'package:app_finanzas_flutter/modules/auth/validate_code.dart';
import 'package:app_finanzas_flutter/navigation/home.dart';
import 'package:app_finanzas_flutter/navigation/navigation.dart';
import 'package:app_finanzas_flutter/widgets/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';


void main() async {
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
      debugShowCheckedModeBanner: false,
      initialRoute: '/menu',
      routes: {
        //reemplazar por splashscreen
        '/': (context) => const SplashScreen(),
        '/menu': (context) => const Navigation(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
        '/send-code': (context) => const SendCode(),
        '/validate-code': (context) => const ValidateCode(),
        '/reset-password': (context) => const ResetPassword(),
        '/register': (context) => const Register(),
      },
    );
  }
}
