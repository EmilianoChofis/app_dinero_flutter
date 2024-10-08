import 'package:app_finanzas_flutter/modules/login.dart';
import 'package:app_finanzas_flutter/modules/reset_password.dart';
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
        '/': (context) => const Login(),
        '/reset-password': (context) => const ResetPassword()
      },
    );
  }
}
