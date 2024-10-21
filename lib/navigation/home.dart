import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/reservations'),
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("Inicio"),
            ElevatedButton(
                onPressed: () => {
                  FirebaseAuth.instance.signOut()
                },
                child: const Text("Logout")),
          ],
        ),
      ),
    );
  }
}
