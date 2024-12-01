import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the entire screen background to white
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Green background with a fixed height
              Container(
                height: 350, // Fixed height for the green section
                color: Color(0xFF004D40), // Dark green background
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo3.png', // Add your logo path here
                      height: 80,
                    ),
                  ],
                ),
              ),

              // "Create an account" text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),

              // Form section with a white background
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    _buildTextField('Name'),
                    SizedBox(height: 16),
                    _buildTextField('Email'),
                    SizedBox(height: 16),
                    _buildTextField('Password', obscureText: true),
                    SizedBox(height: 16),
                    _buildTextField('Confirm password', obscureText: true),
                    SizedBox(height: 24),

                    // Sign Up button
                    ElevatedButton(
                      onPressed: () {
                        // When the user clicks SIGN UP, navigate to the LoginPage
                      
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF004D40), // Dark green button
                        padding: EdgeInsets.symmetric(
                            horizontal: 120, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 26,),

                    // Or sign up with text
                    Text(
                      'or sign up with',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 16),

                    // Social media icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIcon(FontAwesomeIcons.google, const Color.fromARGB(255, 144, 161, 29)),
                        SizedBox(width: 16),
                        _buildSocialIcon(FontAwesomeIcons.instagram, Colors.deepOrangeAccent),
                        SizedBox(width: 16),
                        _buildSocialIcon(FontAwesomeIcons.facebookF, Colors.blueAccent),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Already have an account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have an account?'),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(color: Color(0xFF004D40)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build text fields
  Widget _buildTextField(String labelText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // Helper method to build social media icons
  Widget _buildSocialIcon(IconData icon, Color color) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: color.withOpacity(0.1),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}