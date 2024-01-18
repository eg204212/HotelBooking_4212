import 'package:flutter/material.dart';
import 'package:hotelbookingmobile/createacc.dart';
import 'package:hotelbookingmobile/forgotpassword.dart';
import 'package:hotelbookingmobile/find.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 0.0,
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                        text: 'Welcome ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 18, 226),
                        ),
                      ),
                      TextSpan(
                        text: 'Back',
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                width: 320,
                child: const Text(
                  "We missed you! Login to continue your journey "
                  "with us.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 15.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.purple,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Find()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  primary: const Color.fromARGB(255, 124, 3, 146),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Or continue  with",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/google_icon.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/facebook_icon.png'),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Createacc()),
                      );
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.purple,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
