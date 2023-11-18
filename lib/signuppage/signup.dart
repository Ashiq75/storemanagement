import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void validateLogin() {
    String username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // For simplicity, checking if both fields are non-empty
    if (username.isNotEmpty && password.isNotEmpty && email.isNotEmpty) {
      // In a real application, you would perform authentication logic here
      Navigator.pushNamed(context, '/login');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('No Creat Account'),
            content: Text('Please enter creat or login.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                validateLogin();
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
