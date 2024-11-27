import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';  
import 'homepage.dart'; 
import 'placepage.dart'; 
import 'contactpage.dart'; 
import 'welcome.dart'; 
import 'register.dart'; 
import 'login.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure bindings are initialized before Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,  // This is auto-generated in firebase_options.dart
  );

  runApp(MyApp());  // Run the app after Firebase initialization
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
        '/places': (context) => PlacesPage(onThemeChanged: _toggleTheme),
        '/contact': (context) => ContactPage(
              onThemeChanged: _toggleTheme,
            ),
        '/register': (context) => RegisterPage(), // Route for RegisterPage
        '/login': (context) => LoginPage(), // Route for LoginPage
      },
    );
  }
}
