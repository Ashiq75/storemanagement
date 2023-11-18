import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void validateLogin() {
    String username = usernameController.text;
    String password = passwordController.text;

    // For simplicity, checking if both fields are non-empty
    if (username.isNotEmpty && password.isNotEmpty) {
      // In a real application, you would perform authentication logic here
      Navigator.pushNamed(context, '/lab');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('Please enter both username and password.'),
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
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "welcome",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 100,),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  labelText: 'Username',
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
              onPressed: (){
                validateLogin();
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Don\'t have an account? Sign up here'),
            ),
          ],
        ),
      ),
    );
  }
}
