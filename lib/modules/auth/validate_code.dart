import 'package:flutter/material.dart';

class ValidateCode extends StatefulWidget {
  const ValidateCode({super.key});

  @override
  State<ValidateCode> createState() => _ValidateCodeState();
}

class _ValidateCodeState extends State<ValidateCode> {
  final TextEditingController _code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/starbucks.png', width: 100, height: 100,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Codigo',
                    label: Text('Codigo'),
                    labelStyle: TextStyle(color: Colors.black26)
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _code,
              ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: () {
                  print('email: ${_code.text}');
                  Navigator.pushNamed(context, '/reset-password');

                }, child: const Text('Validar codigo'),
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.blueAccent, foregroundColor: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
