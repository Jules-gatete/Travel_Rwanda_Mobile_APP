import 'package:flutter/material.dart';
import 'homepage.dart'; // Import HomePage for navigation
import 'welcome.dart'; // Import WelcomeScreen for navigation

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Default theme is light

  void _toggleTheme(bool isDarkTheme) {
    setState(() {
      _themeMode = isDarkTheme ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: _themeMode, // Switch between dark and light mode
      initialRoute: '/welcome', // Initial route set to the WelcomeScreen
      routes: {
        '/welcome': (context) => WelcomeScreen(), // Route for WelcomeScreen
        '/homepage': (context) => HomePage(onThemeChanged: _toggleTheme),
      },
    );
  }
}
