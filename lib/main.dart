import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'profile_screen.dart';
import 'home_screen.dart';
import 'chatbot_screen.dart';

void main() {
  runApp(MaterialApp(
    // Set the initial route to the login screen
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      // Define routes for the login screen and the main app screen
      '/login': (context) => LoginScreen(),
      '/profile': (context) => ProfileScreen(),
      '/home': (context) => LandingPage(),
      '/chatbot': (context) => ChatbotScreen()
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
