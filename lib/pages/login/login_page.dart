import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_viewmodel.dart';
import '../createaccount/createaccount_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final loginViewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 80.0), // Adjust the value as needed
              child: Text(
                'Create an account or login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              onChanged: (value) => loginViewModel.email = value,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              onChanged: (value) => loginViewModel.password = value,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true, // Correctly used here
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Implement your login logic here
                  loginViewModel.login();
                },
                child: Text('Login'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateaccountPage()),
                  );
                },
                child: Text('Create Account'),
              )
            )
          ],
        ),
      ),
    );
  }
}