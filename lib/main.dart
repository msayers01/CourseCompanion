import 'package:coursecompanion/pages/createaccount/createaccount_viewmodel.dart';
import 'package:flutter/material.dart';
import 'pages/login/login_page.dart';
import 'pages/newuser/newuser_page.dart';
import 'pages/dashboard/dashboard_page.dart';
import 'pages/start/start_page.dart';
import 'pages/login/login_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CreateaccountViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel())
      ],
      child: MaterialApp(
        // ... other MaterialApp properties
        home: LoginPage(),
      ),
    );
  }

  Widget getEntryPoint() {
    // Here, you would include logic to decide which widget to show first.
    // For example, checking if the user is logged in:

    bool isLoggedIn = checkLoginStatus(); // Implement this function based on your auth logic.

    if (isLoggedIn) {
      return DashboardPage(); // If logged in, go to home page.
    } else {
      return StartPage(); // If not logged in, show login page.
    }
  }

  bool checkLoginStatus() {
    return false;
  }
}

