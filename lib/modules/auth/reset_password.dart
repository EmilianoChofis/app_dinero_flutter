import 'package:flutter/material.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _newpassword = TextEditingController();

  bool _isBlack = true;
  bool _newIsBlack = true;

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
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  label: const Text('Contraseña'),
                  labelStyle: const TextStyle(color: Colors.black26),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isBlack = !_isBlack;
                        });
                      }, icon: Icon(
                      _isBlack ?
                      Icons.visibility :
                      Icons.visibility_off)),
                ),
                controller: _password,
                obscureText: _isBlack,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Repetir Contraseña',
                  label: const Text('Repetir Contraseña'),
                  labelStyle: const TextStyle(color: Colors.black26),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _newIsBlack = !_newIsBlack;
                        });
                      }, icon: Icon(
                      _newIsBlack ?
                      Icons.visibility :
                      Icons.visibility_off)),
                ),
                controller: _newpassword,
                obscureText: _isBlack,
              ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: () {
                  print('email: ${_password.text}');
                  Navigator.pushNamed(context, '/');

                }, child: const Text('Reestablecer contraseña'),
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
