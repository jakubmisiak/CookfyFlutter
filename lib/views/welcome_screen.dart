import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text("Cook", style: TextStyle(fontSize: 22)),
            Text("Fy", style: TextStyle(fontSize: 22, color: Colors.green)),
          ]),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade700,
              filled: true,
              hintText: 'Login',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade700,
              filled: true,
              hintText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text('Login'),
          ),
          Text("Don't have an account?"),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text('Sign in'),
          ),
        ],
      ),
    ));
  }
}
