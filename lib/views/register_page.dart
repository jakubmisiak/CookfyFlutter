import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Cook", style: TextStyle(fontSize: 22)),
          Text("Fy", style: TextStyle(fontSize: 22, color: Colors.green)),
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Login"),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade700,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const Text("Password"),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade700,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const Text("Confirm password"),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade700,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              TextButton(onPressed: (){}, child: const Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}
