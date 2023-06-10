import 'dart:ui';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'portfolio.dart';
import 'portfolio_provider.dart';
import 'portfolio-screen.dart';
import 'add-portfolio.dart';
import 'menu.dart';
import 'setpassword.dart';


class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}
class _PortfolioAppState extends State<PortfolioApp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isAuthenticated = false;
  bool _showErrorMessage = false;

  void _authenticate() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Perform authentication logic here (e.g., check against stored username and password)
    bool isValidCredentials = (username == 'asdf' && password == '123');

    setState(() {
      _isAuthenticated = isValidCredentials;
      _showErrorMessage = true;
    });

    if (_isAuthenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MenuScreen()),
      );
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/portfolio-bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login in Portfolio',
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold), // Set the text color to white
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: _usernameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white), // Set the text color to white
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),// Set the label color to white
                    ),
                    obscureText: true,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 16),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ChangeCredentialsPage()),
                                  );
                                },
                                child: Text(
                                  'Forget password?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: 100,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: _authenticate,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text('Login'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),
                    ],
                  ),
                  if (_showErrorMessage && !_isAuthenticated) // Show error message if authentication fails
                    Text(
                      'Invalid username or password',
                      style: TextStyle(color: Colors.red),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}