import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'createaccount_viewmodel.dart';

class CreateaccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final createViewModel = Provider.of<CreateaccountViewModel>(context);

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
                'Enter an email and password, then press \'Create Account\'',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              onChanged: (value) => createViewModel.email = value,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              onChanged: (value) => createViewModel.password = value,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true, // Correctly used here
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    createViewModel.create();
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