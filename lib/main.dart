import 'package:app_finanzas_flutter/modules/auth/login.dart';
import 'package:app_finanzas_flutter/modules/auth/reset_password.dart';
import 'package:app_finanzas_flutter/modules/auth/send_code.dart';
import 'package:app_finanzas_flutter/modules/auth/validate_code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        //reemplazar por splashscreen
        '/': (context) => const Login(),
        '/send-code': (context) => const SendCode(),
        '/validate-code': (context) => const ValidateCode(),
        '/reset-password': (context) => const ResetPassword(),
      },
    );
  }
}
